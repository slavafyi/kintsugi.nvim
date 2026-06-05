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
local padding_y = 54
local line_height = 22
local char_width = 9.4
local font_size = 15
local gutter_width = 42
local code_x = padding_x + gutter_width
local width = 920

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

local function line_spans(line_number, text, normal_fg)
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

  for column = 1, #text do
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
  local height = padding_y + (#lines * line_height) + 28
  local svg = {
    '<?xml version="1.0" encoding="UTF-8"?>',
    '<svg xmlns="http://www.w3.org/2000/svg" width="' .. width .. '" height="' .. height .. '" viewBox="0 0 ' .. width .. ' ' .. height .. '">',
    '<rect width="100%" height="100%" fill="' .. normal_bg .. '"/>',
    '<text x="' .. padding_x .. '" y="30" fill="' .. title_fg .. '" font-family="ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace" font-size="15" font-weight="700">' .. escape_xml(variant.label) .. '</text>',
    '<text x="' .. (width - padding_x) .. '" y="30" fill="' .. muted_fg .. '" font-family="ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace" font-size="13" text-anchor="end">sample.rs</text>',
  }

  for index, line in ipairs(lines) do
    local y = padding_y + ((index - 1) * line_height)
    table.insert(svg, '<text x="' .. padding_x .. '" y="' .. y .. '" fill="' .. line_nr_fg .. '" font-family="ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace" font-size="' .. font_size .. '" text-anchor="end">' .. index .. '</text>')
    table.insert(svg, '<text x="' .. code_x .. '" y="' .. y .. '" font-family="ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace" font-size="' .. font_size .. '" xml:space="preserve">')

    for _, span in ipairs(line_spans(index, line, normal_fg)) do
      table.insert(svg, '<tspan ' .. span_attributes(span.style) .. '>' .. escape_xml(span.text) .. '</tspan>')
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
