local filetypes = {
  c = "sample.c",
  css = "sample.css",
  go = "sample.go",
  html = "sample.html",
  python = "sample.py",
  rust = "sample.rs",
  toml = "sample.toml",
  typescript = "sample.ts",
  typescriptreact = "sample.tsx",
  vim = "sample.vim",
}

local colorschemes = {
  { name = "dark", colorscheme = "kintsugi-dark" },
  { name = "dark-flared", colorscheme = "kintsugi-dark-flared" },
  { name = "light", colorscheme = "kintsugi-light" },
  { name = "light-flared", colorscheme = "kintsugi-light-flared" },
}

local screenshot_delay_ms = tonumber(vim.env.GALLERY_SCREENSHOT_DELAY_MS or "150") or 150

local function run(argv)
  local result = vim.system(argv, { text = true }):wait()
  if result.code ~= 0 then
    error(table.concat(argv, " ") .. "\n" .. (result.stderr or result.stdout))
  end
  return result.stdout
end

local function run_shell(command)
  local output = vim.fn.system(command)
  if vim.v.shell_error ~= 0 then
    error(command .. "\n" .. output)
  end
  return output
end

local function front_window_rect()
  local script =
    [[tell application "System Events" to tell (first process whose frontmost is true) to get position of front window & size of front window]]
  local output = run({ "osascript", "-e", script })
  local values = {}

  for value in output:gmatch("%-?%d+") do
    table.insert(values, value)
  end

  if #values < 4 then
    error("Could not determine front window bounds from osascript output: " .. output)
  end

  return table.concat({ values[1], values[2], values[3], values[4] }, ",")
end

local function screenshot(output)
  local custom_command = vim.env.GALLERY_SCREENSHOT_CMD
  if custom_command and custom_command ~= "" then
    local escaped_output = vim.fn.shellescape(output)
    local command = custom_command:gsub("{output}", function()
      return escaped_output
    end)
    if command == custom_command then
      command = command .. " " .. escaped_output
    end
    run_shell(command)
    return
  end

  local sysname = (vim.uv or vim.loop).os_uname().sysname
  if sysname == "Darwin" then
    if vim.fn.executable("screencapture") ~= 1 or vim.fn.executable("osascript") ~= 1 then
      error("macOS gallery generation requires screencapture and osascript")
    end
    run({ "screencapture", "-x", "-R", front_window_rect(), output })
  elseif sysname == "Linux" then
    if vim.fn.executable("scrot") == 1 then
      run({ "scrot", "--overwrite", "--focused", output })
    elseif vim.fn.executable("gnome-screenshot") == 1 then
      run({ "gnome-screenshot", "-w", "-f", output })
    else
      error("Linux gallery generation requires scrot or gnome-screenshot")
    end
  else
    error("Unsupported gallery screenshot OS: " .. sysname)
  end
end

local function stop_lsp_clients()
  for _, client in ipairs(vim.lsp.get_clients()) do
    client:stop(true)
  end
end

stop_lsp_clients()
vim.o.termguicolors = true
vim.o.relativenumber = true
vim.diagnostic.enable(false)
vim.fn.mkdir("./outputs", "p")

for ft, sample in pairs(filetypes) do
  vim.cmd("edit ./inputs/" .. sample)
  vim.cmd("silent! filetype detect")
  for _, variant in ipairs(colorschemes) do
    stop_lsp_clients()
    vim.diagnostic.enable(false)
    vim.cmd("colorscheme " .. variant.colorscheme)
    vim.cmd("redraw!")
    vim.cmd("echo ''")
    vim.cmd("silent! messages clear")
    if screenshot_delay_ms > 0 then
      vim.cmd("sleep " .. screenshot_delay_ms .. "m")
    end
    screenshot("./outputs/" .. ft .. "_" .. variant.name .. ".png")
  end
end
