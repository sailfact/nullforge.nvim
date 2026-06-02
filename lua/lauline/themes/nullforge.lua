-- nullforge lualine theme
-- Place at: ~/.config/nvim/lua/lualine/themes/nullforge.lua
-- Usage:
--   require("lualine").setup({ options = { theme = "nullforge" } })

local bg_deep   = "#06101a"
local bg        = "NONE"
local bg2       = "#142230"
local bg3       = "#22344a"
local fg        = "#f2ece6"
local fg_muted  = "#7a9bb8"
local blue      = "#7a9bb8"
local green     = "#8fb27e"
local peach     = "#e8a882"
local red       = "#d97264"
local orange    = "#c4622d"

return {
  normal = {
    a = { fg = bg_deep, bg = blue,   gui = "bold" },
    b = { fg = fg,       bg = bg3 },
    c = { fg = fg_muted, bg = bg },
  },
  insert = {
    a = { fg = bg_deep, bg = green,  gui = "bold" },
    b = { fg = fg,       bg = bg3 },
    c = { fg = fg_muted, bg = bg },
  },
  visual = {
    a = { fg = bg_deep, bg = peach,  gui = "bold" },
    b = { fg = fg,       bg = bg3 },
    c = { fg = fg_muted, bg = bg },
  },
  replace = {
    a = { fg = bg_deep, bg = red,    gui = "bold" },
    b = { fg = fg,       bg = bg3 },
    c = { fg = fg_muted, bg = bg },
  },
  command = {
    a = { fg = bg_deep, bg = orange, gui = "bold" },
    b = { fg = fg,       bg = bg3 },
    c = { fg = fg_muted, bg = bg },
  },
  inactive = {
    a = { fg = fg_muted, bg = bg2 },
    b = { fg = fg_muted, bg = bg2 },
    c = { fg = fg_muted, bg = bg },
  },
}
