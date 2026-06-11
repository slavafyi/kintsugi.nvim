# Kintsugi for Neovim

A Neovim colorscheme port of the beautiful [VS Code Kintsugi] theme by Ahmed Hatem.

This project keeps the slim, direct-highlight architecture of [papercolor-theme-slim]: no Lua module, no runtime color builder, and no abstraction inside the colorscheme files. The theme is written in Vimscript because `colors/*.vim` is Neovim's native colorscheme format and direct `:highlight` definitions are simple, fast, and easy to override.

## Variants

`kintsugi-dark` is the primary/default variant.

- `kintsugi-dark`
- `kintsugi-dark-flared`
- `kintsugi-light`
- `kintsugi-light-flared`

Preview SVGs are generated from [gallery/inputs/sample.rs](gallery/inputs/sample.rs) with `make gen-variants`.

| `kintsugi-dark` | `kintsugi-dark-flared` |
| --- | --- |
| ![kintsugi-dark Rust preview](gallery/variants/kintsugi-dark.svg) | ![kintsugi-dark-flared Rust preview](gallery/variants/kintsugi-dark-flared.svg) |

| `kintsugi-light` | `kintsugi-light-flared` |
| --- | --- |
| ![kintsugi-light Rust preview](gallery/variants/kintsugi-light.svg) | ![kintsugi-light-flared Rust preview](gallery/variants/kintsugi-light-flared.svg) |

## Installation

This theme is a native Neovim colorscheme: it only provides `colors/*.vim`
files and does not have a Lua `setup()` function.

### `vim.pack`

```lua
vim.pack.add({
  "https://github.com/slavafyi/kintsugi.nvim",
})

vim.cmd.colorscheme("kintsugi-dark")
```

### `lazy.nvim`

```lua
{
  "slavafyi/kintsugi.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("kintsugi-dark")
  end,
}
```

Use any variant from the list above in place of `kintsugi-dark`.

## Configuration

```lua
vim.o.termguicolors = true
vim.cmd.colorscheme("kintsugi-dark")

-- Recommended on Neovim 0.11+.
vim.o.winborder = "rounded"
```

## Customization

Use normal Neovim highlight overrides. Define override autocommands before
loading the colorscheme when possible.

### Transparent background

```lua
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "kintsugi-*",
  callback = function()
    vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
  end,
})
```

### Override a color

```lua
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "kintsugi-light",
  callback = function()
    vim.api.nvim_set_hl(0, "Normal", { bg = "#f8f4ea" })
  end,
})
```

### Third-party plugin support

```lua
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "kintsugi-*",
  callback = function()
    vim.api.nvim_set_hl(0, "ExamplePluginHighlightGroup", { link = "CursorLine" })
  end,
})
```

## Credits

- Colors ported from [VS Code Kintsugi] by Ahmed Hatem.
- Vimscript colorscheme architecture based on [papercolor-theme-slim] by Samuel Roeca.

[Neovim package]: https://neovim.io/doc/user/usr_05.html#_adding-a-package
[VS Code Kintsugi]: https://github.com/ahatem/vscode-kintsugi
[papercolor-theme-slim]: https://github.com/pappasam/papercolor-theme-slim
[winborder]: https://neovim.io/doc/user/options.html#'winborder'

## License

MIT License - see [LICENSE](LICENSE) for details.
