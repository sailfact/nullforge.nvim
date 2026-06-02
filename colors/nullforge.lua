-- nullforge.lua
-- A deep navy / warm terracotta Neovim colorscheme
-- Palette tuned to match the VS Code "Nullforge Dark" preview.

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "nullforge"
vim.o.background = "dark"

local hl = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ─── Palette ────────────────────────────────────────────────────────────────
-- Navy ramp + warm accents lifted from the VS Code preview (preview.html).
local c = {
  -- Base (navy ramp, dark → light)
  bg              = "NONE",           -- transparent
  bg_solid        = "#1a2a3a",        -- editor surface / floats (--vs-bg)
  bg_deep         = "#06101a",        -- deepest chrome: title/activity/panel
  bg1             = "#22344a",        -- lifted: cursorline, borders (--vs-side-head)
  bg2             = "#142230",        -- recessed panels / sidebars
  bg3             = "#06101a",        -- statusline / tabline backdrop (--vs-title-bg)

  fg              = "#f2ece6",        -- foreground / variables (--sx-variable)
  fg_dim          = "#dce6f0",        -- parameters, operators (--sx-param)
  fg_muted        = "#7a9bb8",        -- comments, properties, punctuation (--sx-comment)

  -- Accent colours (warm, orange-forward)
  red             = "#d97264",        -- errors, deletes
  orange          = "#c4622d",        -- keywords, tags, cursor, accent (--sx-keyword)
  peach           = "#e8a882",        -- strings, numbers, types, constants (--sx-string)
  green           = "#8fb27e",        -- characters, git add
  green_bright    = "#a4c294",        -- escapes, success
  blue            = "#7a9bb8",        -- info / muted blue
  blue_light      = "#dce6f0",        -- operators (--sx-operator)
  cream           = "#f7e8df",        -- functions, special (--sx-function)

  -- Selection / UI
  selection_bg    = "#3d5a75",        -- visual selection bg / line numbers
  selection_fg    = "#f2ece6",        -- visual selection fg

  -- Delimiters / punctuation
  punct           = "#7a9bb8",        -- punctuation (--sx-punct)

  -- Git
  git_add         = "#4a7c3a",
  git_change      = "#3d5a75",
  git_delete      = "#a13c2a",

  -- Diagnostics
  diag_error      = "#a13c2a",
  diag_warn       = "#c4622d",
  diag_info       = "#3d5a75",
  diag_hint       = "#4a7c3a",
}

-- ─── Editor Core ────────────────────────────────────────────────────────────
hl("Normal",          { fg = c.fg,        bg = c.bg })
hl("NormalNC",        { fg = c.fg_dim,    bg = c.bg })
hl("NormalFloat",     { fg = c.fg,        bg = c.bg_solid })
hl("FloatBorder",     { fg = c.bg1,       bg = c.bg_solid })
hl("FloatTitle",      { fg = c.orange,    bg = c.bg_solid, bold = true })

hl("ColorColumn",     { bg = c.bg1 })
hl("Conceal",         { fg = c.fg_muted })
hl("CursorColumn",    { bg = c.bg1 })
hl("CursorLine",      { bg = c.bg1 })
hl("CursorLineFold",  { bg = c.bg1 })
hl("CursorLineNr",    { fg = c.orange,     bold = true })
hl("CursorLineSign",  { bg = c.bg1 })

hl("Directory",       { fg = c.blue })
hl("EndOfBuffer",     { fg = c.bg2 })
hl("ErrorMsg",        { fg = c.red,       bold = true })
hl("FoldColumn",      { fg = c.fg_muted,  bg = c.bg })
hl("Folded",          { fg = c.fg_muted,  bg = c.bg2 })

hl("IncSearch",       { fg = c.bg_deep,   bg = c.orange,    bold = true })
hl("Search",          { fg = c.bg_deep,   bg = c.peach })
hl("Substitute",      { fg = c.bg_deep,   bg = c.peach })
hl("CurSearch",       { link = "IncSearch" })

hl("LineNr",          { fg = c.selection_bg })
hl("LineNrAbove",     { fg = c.selection_bg })
hl("LineNrBelow",     { fg = c.selection_bg })

hl("MatchParen",      { fg = c.orange,    bold = true,      underline = true })
hl("ModeMsg",         { fg = c.green,     bold = true })
hl("MoreMsg",         { fg = c.green })
hl("MsgArea",         { fg = c.fg })
hl("MsgSeparator",    { fg = c.punct })
hl("NonText",         { fg = c.bg1 })

hl("Pmenu",           { fg = c.fg,        bg = c.bg_deep })
hl("PmenuSel",        { fg = c.fg,        bg = c.selection_bg, bold = true })
hl("PmenuSbar",       { bg = c.bg2 })
hl("PmenuThumb",      { bg = c.selection_bg })
hl("PmenuKind",       { fg = c.cream,     bg = c.bg_deep })
hl("PmenuKindSel",    { fg = c.cream,     bg = c.selection_bg })
hl("PmenuExtra",      { fg = c.fg_muted,  bg = c.bg_deep })
hl("PmenuExtraSel",   { fg = c.fg_muted,  bg = c.selection_bg })

hl("Question",        { fg = c.blue })
hl("QuickFixLine",    { bg = c.bg2 })

hl("SignColumn",      { fg = c.fg_muted,  bg = c.bg })
hl("SpecialKey",      { fg = c.punct })
hl("SpellBad",        { sp = c.red,       undercurl = true })
hl("SpellCap",        { sp = c.blue,      undercurl = true })
hl("SpellLocal",      { sp = c.peach,     undercurl = true })
hl("SpellRare",       { sp = c.cream,     undercurl = true })

hl("StatusLine",      { fg = c.fg,        bg = c.bg3 })
hl("StatusLineNC",    { fg = c.fg_muted,  bg = c.bg2 })
hl("TabLine",         { fg = c.fg_muted,  bg = c.bg3 })
hl("TabLineFill",     { bg = c.bg3 })
hl("TabLineSel",      { fg = c.fg,        bg = c.bg_solid,  bold = true })

hl("Title",           { fg = c.orange,    bold = true })
hl("VertSplit",       { fg = c.bg1 })
hl("WinSeparator",    { fg = c.bg1 })

hl("Visual",          { fg = c.selection_fg, bg = c.selection_bg })
hl("VisualNOS",       { link = "Visual" })
hl("WarningMsg",      { fg = c.orange })
hl("Whitespace",      { fg = c.bg1 })
hl("WildMenu",        { fg = c.fg,        bg = c.selection_bg })
hl("WinBar",          { fg = c.fg_dim,    bg = c.bg })
hl("WinBarNC",        { fg = c.fg_muted,  bg = c.bg })

-- ─── Syntax (Classic Vim Groups) ────────────────────────────────────────────
hl("Comment",         { fg = c.fg_muted,  italic = true })

hl("Constant",        { fg = c.peach })
hl("String",          { fg = c.peach })
hl("Character",       { fg = c.green_bright })
hl("Number",          { fg = c.peach })
hl("Boolean",         { fg = c.orange })
hl("Float",           { fg = c.peach })

hl("Identifier",      { fg = c.fg })
hl("Function",        { fg = c.cream })

hl("Statement",       { fg = c.orange })
hl("Conditional",     { fg = c.orange })
hl("Repeat",          { fg = c.orange })
hl("Label",           { fg = c.orange })
hl("Operator",        { fg = c.blue_light })
hl("Keyword",         { fg = c.orange,    italic = true })
hl("Exception",       { fg = c.red })

hl("PreProc",         { fg = c.peach })
hl("Include",         { fg = c.orange })
hl("Define",          { fg = c.orange })
hl("Macro",           { fg = c.orange })
hl("PreCondit",       { fg = c.orange })

hl("Type",            { fg = c.peach })
hl("StorageClass",    { fg = c.orange })
hl("Structure",       { fg = c.peach })
hl("Typedef",         { fg = c.peach })

hl("Special",         { fg = c.cream })
hl("SpecialChar",     { fg = c.green_bright })
hl("Tag",             { fg = c.orange })
hl("Delimiter",       { fg = c.punct })
hl("SpecialComment",  { fg = c.fg_muted,  italic = true })
hl("Debug",           { fg = c.red })

hl("Underlined",      { underline = true })
hl("Ignore",          { fg = c.bg1 })
hl("Error",           { fg = c.red,       bold = true })
hl("Todo",            { fg = c.bg_deep,   bg = c.orange,    bold = true })

-- ─── Treesitter ─────────────────────────────────────────────────────────────
hl("@variable",               { fg = c.fg })
hl("@variable.builtin",       { fg = c.orange,     italic = true })
hl("@variable.parameter",     { fg = c.fg_dim,     italic = true })
hl("@variable.member",        { fg = c.fg_muted })

hl("@constant",               { fg = c.peach })
hl("@constant.builtin",       { fg = c.orange })
hl("@constant.macro",         { fg = c.orange })

hl("@string",                 { fg = c.peach })
hl("@string.escape",          { fg = c.green_bright })
hl("@string.special",         { fg = c.green_bright })
hl("@string.regexp",          { fg = c.green_bright })

hl("@character",              { fg = c.green_bright })
hl("@number",                 { fg = c.peach })
hl("@number.float",           { fg = c.peach })
hl("@boolean",                { fg = c.orange })

hl("@function",               { fg = c.cream })
hl("@function.builtin",       { fg = c.cream,      italic = true })
hl("@function.call",          { fg = c.cream })
hl("@function.macro",         { fg = c.orange })
hl("@function.method",        { fg = c.cream })
hl("@function.method.call",   { fg = c.cream })

hl("@constructor",            { fg = c.peach })

hl("@keyword",                { fg = c.orange,     italic = true })
hl("@keyword.import",         { fg = c.orange })
hl("@keyword.function",       { fg = c.orange,     italic = true })
hl("@keyword.operator",       { fg = c.blue_light })
hl("@keyword.return",         { fg = c.orange,     italic = true })
hl("@keyword.conditional",    { fg = c.orange })
hl("@keyword.repeat",         { fg = c.orange })
hl("@keyword.exception",      { fg = c.red })
hl("@keyword.modifier",       { fg = c.orange })

hl("@operator",               { fg = c.blue_light })
hl("@punctuation.bracket",    { fg = c.punct })
hl("@punctuation.delimiter",  { fg = c.punct })
hl("@punctuation.special",    { fg = c.peach })

hl("@type",                   { fg = c.peach })
hl("@type.builtin",           { fg = c.orange,     italic = true })
hl("@type.definition",        { fg = c.peach })

hl("@attribute",              { fg = c.peach,      italic = true })
hl("@property",               { fg = c.fg_muted })
hl("@namespace",              { fg = c.fg_dim })
hl("@module",                 { fg = c.fg_dim })

hl("@comment",                { fg = c.fg_muted,   italic = true })
hl("@comment.todo",           { fg = c.bg_deep,    bg = c.orange,  bold = true })
hl("@comment.note",           { fg = c.bg_deep,    bg = c.blue,    bold = true })
hl("@comment.warning",        { fg = c.bg_deep,    bg = c.orange,  bold = true })
hl("@comment.error",          { fg = c.bg_deep,    bg = c.red,     bold = true })

-- Markup (markdown etc.)
hl("@markup.heading",         { fg = c.peach,      bold = true })
hl("@markup.heading.1",       { fg = c.peach,      bold = true })
hl("@markup.heading.2",       { fg = c.orange,     bold = true })
hl("@markup.heading.3",       { fg = c.cream,      bold = true })
hl("@markup.italic",          { italic = true })
hl("@markup.bold",            { bold = true })
hl("@markup.strikethrough",   { strikethrough = true })
hl("@markup.underline",       { underline = true })
hl("@markup.link",            { fg = c.cream,      underline = true })
hl("@markup.link.url",        { fg = c.peach,      underline = true })
hl("@markup.raw",             { fg = c.peach })
hl("@markup.list",            { fg = c.orange })
hl("@markup.list.checked",    { fg = c.green })
hl("@markup.list.unchecked",  { fg = c.fg_muted })

hl("@tag",                    { fg = c.orange })
hl("@tag.attribute",          { fg = c.peach })
hl("@tag.delimiter",          { fg = c.punct })

-- ─── LSP ────────────────────────────────────────────────────────────────────
hl("LspReferenceText",        { bg = c.selection_bg })
hl("LspReferenceRead",        { bg = c.selection_bg })
hl("LspReferenceWrite",       { bg = c.selection_bg, underline = true })
hl("LspSignatureActiveParameter", { fg = c.peach,    bold = true })
hl("LspInlayHint",            { fg = c.fg_muted,   bg = c.bg1,    italic = true })
hl("LspCodeLens",             { fg = c.fg_muted,   italic = true })

-- LSP semantic tokens
hl("@lsp.type.class",         { link = "@type" })
hl("@lsp.type.decorator",     { link = "@attribute" })
hl("@lsp.type.enum",          { link = "@type" })
hl("@lsp.type.enumMember",    { link = "@constant" })
hl("@lsp.type.function",      { link = "@function" })
hl("@lsp.type.interface",     { link = "@type" })
hl("@lsp.type.macro",         { link = "@function.macro" })
hl("@lsp.type.method",        { link = "@function.method" })
hl("@lsp.type.namespace",     { link = "@module" })
hl("@lsp.type.parameter",     { link = "@variable.parameter" })
hl("@lsp.type.property",      { link = "@property" })
hl("@lsp.type.struct",        { link = "@type" })
hl("@lsp.type.type",          { link = "@type" })
hl("@lsp.type.variable",      { link = "@variable" })
hl("@lsp.type.keyword",       { link = "@keyword" })
hl("@lsp.type.comment",       { link = "@comment" })
hl("@lsp.type.string",        { link = "@string" })
hl("@lsp.type.number",        { link = "@number" })
hl("@lsp.mod.readonly",       { italic = true })
hl("@lsp.mod.deprecated",     { fg = c.fg_muted,   strikethrough = true })

-- Diagnostics
hl("DiagnosticError",         { fg = c.diag_error })
hl("DiagnosticWarn",          { fg = c.diag_warn })
hl("DiagnosticInfo",          { fg = c.diag_info })
hl("DiagnosticHint",          { fg = c.diag_hint })
hl("DiagnosticOk",            { fg = c.green_bright })

hl("DiagnosticUnderlineError",{ sp = c.diag_error,  undercurl = true })
hl("DiagnosticUnderlineWarn", { sp = c.diag_warn,   undercurl = true })
hl("DiagnosticUnderlineInfo", { sp = c.diag_info,   undercurl = true })
hl("DiagnosticUnderlineHint", { sp = c.diag_hint,   undercurl = true })

hl("DiagnosticVirtualTextError", { fg = c.diag_error, bg = c.bg1, italic = true })
hl("DiagnosticVirtualTextWarn",  { fg = c.diag_warn,  bg = c.bg1, italic = true })
hl("DiagnosticVirtualTextInfo",  { fg = c.diag_info,  bg = c.bg1, italic = true })
hl("DiagnosticVirtualTextHint",  { fg = c.diag_hint,  bg = c.bg1, italic = true })

hl("DiagnosticSignError",     { fg = c.diag_error })
hl("DiagnosticSignWarn",      { fg = c.diag_warn })
hl("DiagnosticSignInfo",      { fg = c.diag_info })
hl("DiagnosticSignHint",      { fg = c.diag_hint })

hl("DiagnosticFloatingError", { fg = c.diag_error })
hl("DiagnosticFloatingWarn",  { fg = c.diag_warn })
hl("DiagnosticFloatingInfo",  { fg = c.diag_info })
hl("DiagnosticFloatingHint",  { fg = c.diag_hint })

-- ─── Telescope ──────────────────────────────────────────────────────────────
hl("TelescopeNormal",         { fg = c.fg,         bg = c.bg_deep })
hl("TelescopeBorder",         { fg = c.bg1,        bg = c.bg_deep })
hl("TelescopeTitle",          { fg = c.orange,     bg = c.bg_deep, bold = true })
hl("TelescopePromptNormal",   { fg = c.fg,         bg = c.bg_solid })
hl("TelescopePromptBorder",   { fg = c.orange,     bg = c.bg_solid })
hl("TelescopePromptTitle",    { fg = c.bg_deep,    bg = c.orange,    bold = true })
hl("TelescopePromptPrefix",   { fg = c.orange,     bg = c.bg_solid })
hl("TelescopePromptCounter",  { fg = c.fg_muted,   bg = c.bg_solid })
hl("TelescopeResultsNormal",  { fg = c.fg,         bg = c.bg_deep })
hl("TelescopeResultsBorder",  { fg = c.bg1,        bg = c.bg_deep })
hl("TelescopeResultsTitle",   { fg = c.fg_muted,   bg = c.bg_deep })
hl("TelescopePreviewNormal",  { fg = c.fg,         bg = c.bg_deep })
hl("TelescopePreviewBorder",  { fg = c.bg1,        bg = c.bg_deep })
hl("TelescopePreviewTitle",   { fg = c.bg_deep,    bg = c.peach,     bold = true })
hl("TelescopeSelection",      { fg = c.fg,         bg = c.selection_bg })
hl("TelescopeSelectionCaret", { fg = c.orange,     bg = c.selection_bg })
hl("TelescopeMultiSelection", { fg = c.peach,      bg = c.bg2 })
hl("TelescopeMatching",       { fg = c.orange,     bold = true })

-- ─── GitSigns ───────────────────────────────────────────────────────────────
hl("GitSignsAdd",             { fg = c.git_add })
hl("GitSignsChange",          { fg = c.git_change })
hl("GitSignsDelete",          { fg = c.git_delete })
hl("GitSignsAddNr",           { fg = c.git_add })
hl("GitSignsChangeNr",        { fg = c.git_change })
hl("GitSignsDeleteNr",        { fg = c.git_delete })
hl("GitSignsAddLn",           { bg = c.bg1 })
hl("GitSignsChangeLn",        { bg = c.bg1 })
hl("GitSignsDeleteLn",        { bg = c.bg1 })
hl("GitSignsAddPreview",      { fg = c.git_add,    bg = c.bg1 })
hl("GitSignsDeletePreview",   { fg = c.git_delete, bg = c.bg1 })
hl("GitSignsCurrentLineBlame",{ fg = c.fg_muted,   italic = true })

-- ─── Lualine (component colours you can reference in your lualine config) ───
-- Lualine uses its own theming system. Define a theme table below so you can
-- plug it straight into lualine's `options.theme` field.

-- NOTE: this block doesn't set highlight groups directly — it's used by
-- the companion lualine theme at the bottom of this file.

-- ─── Diff ───────────────────────────────────────────────────────────────────
hl("DiffAdd",                 { fg = c.git_add,    bg = c.bg1 })
hl("DiffChange",              { fg = c.git_change, bg = c.bg1 })
hl("DiffDelete",              { fg = c.git_delete, bg = c.bg1 })
hl("DiffText",                { fg = c.fg,         bg = c.selection_bg, bold = true })
hl("diffAdded",               { link = "DiffAdd" })
hl("diffRemoved",             { link = "DiffDelete" })
hl("diffChanged",             { link = "DiffChange" })
hl("diffFile",                { fg = c.peach })
hl("diffOldFile",             { fg = c.red })
hl("diffNewFile",             { fg = c.green })

-- ─── Misc plugins (common) ──────────────────────────────────────────────────
-- indent-blankline
hl("IblIndent",               { fg = c.bg1 })
hl("IblScope",                { fg = c.selection_bg })

-- nvim-tree
hl("NvimTreeNormal",          { fg = c.fg,         bg = c.bg_deep })
hl("NvimTreeRootFolder",      { fg = c.orange,     bold = true })
hl("NvimTreeFolderIcon",      { fg = c.orange })
hl("NvimTreeFileIcon",        { fg = c.fg_muted })
hl("NvimTreeGitDirty",        { fg = c.git_change })
hl("NvimTreeGitNew",          { fg = c.git_add })
hl("NvimTreeGitDeleted",      { fg = c.git_delete })

-- which-key
hl("WhichKey",                { fg = c.orange })
hl("WhichKeyGroup",           { fg = c.peach })
hl("WhichKeyDesc",            { fg = c.fg_dim })
hl("WhichKeySeparator",       { fg = c.punct })
hl("WhichKeyValue",           { fg = c.fg_muted })

-- nvim-cmp
hl("CmpItemAbbrMatch",        { fg = c.orange,     bold = true })
hl("CmpItemAbbrMatchFuzzy",   { fg = c.orange })
hl("CmpItemKindText",         { fg = c.fg_dim })
hl("CmpItemKindMethod",       { fg = c.cream })
hl("CmpItemKindFunction",     { fg = c.cream })
hl("CmpItemKindConstructor",  { fg = c.peach })
hl("CmpItemKindField",        { fg = c.fg_muted })
hl("CmpItemKindVariable",     { fg = c.fg })
hl("CmpItemKindClass",        { fg = c.peach })
hl("CmpItemKindInterface",    { fg = c.peach })
hl("CmpItemKindModule",       { fg = c.fg_dim })
hl("CmpItemKindProperty",     { fg = c.fg_muted })
hl("CmpItemKindKeyword",      { fg = c.orange })
hl("CmpItemKindSnippet",      { fg = c.peach })
hl("CmpItemKindValue",        { fg = c.peach })
hl("CmpItemKindEnum",         { fg = c.peach })
hl("CmpItemKindColor",        { fg = c.peach })
hl("CmpItemKindFile",         { fg = c.peach })
hl("CmpItemKindFolder",       { fg = c.orange })
hl("CmpItemKindEvent",        { fg = c.cream })
hl("CmpItemKindOperator",     { fg = c.blue_light })
hl("CmpItemKindTypeParameter",{ fg = c.peach })

-- ─── Lualine ────────────────────────────────────────────────────────────────
-- Lualine themes live in their own file, not here.
-- Place the companion file at:
--   ~/.config/nvim/lua/lualine/themes/nullforge.lua
-- Then in your lualine setup:
--   require("lualine").setup({ options = { theme = "nullforge" } })

-- ─── Done ───────────────────────────────────────────────────────────────────
