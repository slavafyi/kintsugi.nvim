local variants = {
  { name = "kintsugi-dark", label = "kintsugi-dark" },
  { name = "kintsugi-dark-flared", label = "kintsugi-dark-flared" },
  { name = "kintsugi-light", label = "kintsugi-light" },
  { name = "kintsugi-light-flared", label = "kintsugi-light-flared" },
}

local input = "./inputs/sample.rs"
local output_dir = "./variants"
local max_lines = tonumber(vim.env.VARIANT_PREVIEW_MAX_LINES or "34") or 34
local padding_x = 28
local font_size = 14
local line_height = math.ceil(font_size * 1.4)
local title_font_size = 14
local metadata_font_size = 14
local gutter_width = 12
local code_x = padding_x + gutter_width
local width = 920
local char_width = font_size * 0.62
local font_name = "IoskeleyMono Nerd Font"
local font_family = font_name .. ", ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace"
local title_y = 30
local code_start_y = math.ceil(title_y + (line_height * 1.5))
local max_columns = math.max(20, math.floor((width - code_x - padding_x) / char_width))

local function escape_xml(value)
  return value
    :gsub("&", "&amp;")
    :gsub("<", "&lt;")
    :gsub(">", "&gt;")
    :gsub('"', "&quot;")
    :gsub("'", "&apos;")
end

local function hex(value, fallback)
  if type(value) == "number" then
    return string.format("#%06x", value)
  end
  return fallback
end

local function get_hl(name)
  local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = name, link = false })
  if ok then
    return hl
  end
  return {}
end

local function span_attributes(style)
  local attrs = { 'fill="' .. style.fg .. '"' }

  if style.bold then
    table.insert(attrs, 'font-weight="700"')
  end

  if style.italic then
    table.insert(attrs, 'font-style="italic"')
  end

  if style.underline or style.strikethrough then
    local decorations = {}
    if style.underline then
      table.insert(decorations, "underline")
    end
    if style.strikethrough then
      table.insert(decorations, "line-through")
    end
    table.insert(attrs, 'text-decoration="' .. table.concat(decorations, " ") .. '"')
  end

  return table.concat(attrs, " ")
end

local function format_number(value)
  return string.format("%.2f", value):gsub("%.?0+$", "")
end

local function syntax_style(line_number, column, normal_fg)
  local syntax_id = vim.fn.synIDtrans(vim.fn.synID(line_number, column, true))
  local group = vim.fn.synIDattr(syntax_id, "name")
  local hl = group ~= "" and get_hl(group) or {}

  return {
    fg = hex(hl.fg, normal_fg),
    bold = hl.bold == true,
    italic = hl.italic == true,
    underline = hl.underline == true,
    strikethrough = hl.strikethrough == true,
  }
end

local function style_key(style)
  return table.concat({
    style.fg,
    style.bold and "b" or "",
    style.italic and "i" or "",
    style.underline and "u" or "",
    style.strikethrough and "s" or "",
  }, ":")
end

local function range_spans(line_number, text, start_column, end_column, normal_fg)
  local spans = {}
  local current_style = nil
  local current_key = nil
  local current_text = {}

  local function flush()
    if current_style and #current_text > 0 then
      table.insert(spans, {
        style = current_style,
        text = table.concat(current_text),
      })
    end
  end

  for column = start_column, end_column do
    local char = text:sub(column, column)
    local style = syntax_style(line_number, column, normal_fg)
    local key = style_key(style)

    if key ~= current_key then
      flush()
      current_style = style
      current_key = key
      current_text = {}
    end

    table.insert(current_text, char)
  end

  flush()
  return spans
end

local function wrapped_line_spans(line_number, text, normal_fg)
  if text == "" then
    return { {} }
  end

  local rows = {}
  local start_column = 1

  while start_column <= #text do
    local max_end_column = math.min(#text, start_column + max_columns - 1)
    local end_column = max_end_column
    local next_column = max_end_column + 1

    if max_end_column < #text then
      for column = max_end_column, start_column + 1, -1 do
        if text:sub(column, column):match("%s") then
          end_column = column - 1
          next_column = column + 1
          break
        end
      end
    end

    table.insert(rows, range_spans(line_number, text, start_column, end_column, normal_fg))
    start_column = next_column
  end

  return rows
end

local function visual_rows(lines, normal_fg)
  local rows = {}

  for line_number, line in ipairs(lines) do
    local wrapped = wrapped_line_spans(line_number, line, normal_fg)

    for wrapped_index, spans in ipairs(wrapped) do
      table.insert(rows, {
        source_line = line_number,
        continuation = wrapped_index > 1,
        spans = spans,
      })
    end
  end

  return rows
end

local function render_variant(variant)
  vim.cmd("colorscheme " .. variant.name)
  vim.cmd("edit " .. input)
  vim.bo.filetype = "rust"
  vim.cmd("syntax enable")
  vim.cmd("syntax sync fromstart")
  vim.cmd("redraw")

  local lines = vim.api.nvim_buf_get_lines(0, 0, max_lines, false)
  local normal = get_hl("Normal")
  local line_nr = get_hl("LineNr")
  local title = get_hl("Title")
  local comment = get_hl("Comment")
  local normal_fg = hex(normal.fg, "#dddddd")
  local normal_bg = hex(normal.bg, "#161618")
  local line_nr_fg = hex(line_nr.fg, normal_fg)
  local title_fg = hex(title.fg, normal_fg)
  local muted_fg = hex(comment.fg, line_nr_fg)
  local rows = visual_rows(lines, normal_fg)
  local height = code_start_y + (#rows * line_height) + 28
  local svg = {
    '<?xml version="1.0" encoding="UTF-8"?>',
    '<svg xmlns="http://www.w3.org/2000/svg" width="' .. width .. '" height="' .. height .. '" viewBox="0 0 ' .. width .. ' ' .. height .. '">',
    '<rect width="100%" height="100%" fill="' .. normal_bg .. '"/>',
    '<text x="' .. padding_x .. '" y="' .. title_y .. '" fill="' .. title_fg .. '" font-family="' .. font_family .. '" font-size="' .. title_font_size .. '" font-weight="700">' .. escape_xml(variant.label) .. '</text>',
    '<text x="' .. (width - padding_x) .. '" y="' .. title_y .. '" fill="' .. muted_fg .. '" font-family="' .. font_family .. '" font-size="' .. metadata_font_size .. '" text-anchor="end">' .. escape_xml("sample.rs · " .. font_name) .. '</text>',
  }

  for row_index, row in ipairs(rows) do
    local y = code_start_y + ((row_index - 1) * line_height)

    if not row.continuation then
      table.insert(svg, '<text x="' .. padding_x .. '" y="' .. y .. '" fill="' .. line_nr_fg .. '" font-family="' .. font_family .. '" font-size="' .. font_size .. '" text-anchor="end">' .. row.source_line .. '</text>')
    end

    table.insert(svg, '<text x="' .. code_x .. '" y="' .. y .. '" font-family="' .. font_family .. '" font-size="' .. font_size .. '" xml:space="preserve">')

    local column = 0
    for _, span in ipairs(row.spans) do
      local attrs = span_attributes(span.style)

      for index = 1, #span.text do
        local char = span.text:sub(index, index)

        if char ~= " " then
          local x = code_x + (column * char_width)
          table.insert(svg, '<tspan x="' .. format_number(x) .. '" ' .. attrs .. '>' .. escape_xml(char) .. '</tspan>')
        end

        column = column + 1
      end
    end

    table.insert(svg, '</text>')
  end

  table.insert(svg, '</svg>')
  vim.fn.writefile(svg, output_dir .. "/" .. variant.name .. ".svg")
end

vim.o.termguicolors = true
vim.o.number = false
vim.o.relativenumber = false
vim.fn.mkdir(output_dir, "p")

for _, variant in ipairs(variants) do
  render_variant(variant)
end
