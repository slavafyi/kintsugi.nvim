# Agent Notes

## Fork Goal

- This fork ports `ahatem/vscode-kintsugi` to Neovim `0.11+`.
- Preserve the upstream Kintsugi colors exactly where Neovim can represent them.
- Preserve the slim direct-highlight architecture from `pappasam/papercolor-theme-slim`.
- Prefer fixing missing or broken Neovim highlight coverage over redesigning the theme.

## Editing Rules

- Prefer new highlight links and reuse upstream Kintsugi colors before adding new explicit color values.
- Do not change core palette choices unless needed to fix a real Neovim bug or prevent fallback to Neovim's default palette.
- Keep all four `colors/kintsugi-*.vim` files structurally aligned.
- Use kebab-case colorscheme file names and `g:colors_name` values.
- Target Neovim behavior, not Vim compatibility.

## Review Workflow

- When checking visual changes, prefer isolated `nvim --clean` runs so only the colorscheme source changes.

## Commits

- Use Conventional Commits.
- Keep the commit subject on a single line and at most 79 characters.
- Unless the user explicitly asks for it, do not add a commit body/description.
