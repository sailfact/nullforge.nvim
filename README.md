# nullforge.nvim

A deep navy / warm terracotta Neovim colorscheme.

## Requirements

- Neovim 0.9+
- [lazy.nvim](https://github.com/folke/lazy.nvim)

## Installation

```lua
{
  "sailfact/nullforge.nvim",
  name = "nullforge",
  priority = 1000,
  opts = {
    transparent = false,
  },
  config = function(_, opts)
    require("nullforge").setup(opts)
    vim.cmd.colorscheme("nullforge")
  end,
}
```

## Palette

| Role       | Hex       |
|------------|-----------|
| Role               | Hex       | Used for                          |
|--------------------|-----------|-----------------------------------|
| Background (editor)| `#1a2a3a` | editor surface / floats           |
| Background (deep)  | `#06101a` | statusline, popups, tree          |
| Foreground         | `#f2ece6` | variables, normal text            |
| Keyword            | `#c4622d` | keywords, tags, types' modifiers  |
| String / Type      | `#e8a882` | strings, numbers, types, constants|
| Function           | `#f7e8df` | functions, methods                |
| Comment / Property | `#7a9bb8` | comments, members, punctuation    |
| Parameter / Operator| `#dce6f0`| parameters, operators             |
| Green              | `#8fb27e` | characters, git add               |
| Red                | `#d97264` | errors, deletes                   |
| Selection          | `#3d5a75` | visual selection, line numbers    |