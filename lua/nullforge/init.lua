local M = {}

---@class NullforgeOptions
---@field transparent boolean

---@type NullforgeOptions
local defaults = {
  transparent = true,
}

M.setup = function(opts)
  opts = vim.tbl_deep_extend("force", defaults, opts or {})

  if opts.transparent == false then
    vim.api.nvim_set_hl(0, "Normal",      { fg = "#f2ece6", bg = "#1a2a3a" })
    vim.api.nvim_set_hl(0, "NormalNC",    { fg = "#dce6f0", bg = "#1a2a3a" })
    vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#f2ece6", bg = "#1a2a3a" })
  end
end

return M