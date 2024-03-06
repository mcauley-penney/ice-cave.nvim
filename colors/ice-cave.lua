-- Author: mp
-- Notes:
-- 	hi groups: https://neovim.io/doc/user/syntax.html#highlight-groups
-- 	bg, also set in terminal cfg: #1c2128

vim.g.colors_name = "ice-cave"

local utils       = require("utils")

local na          = {}
local base000     = "#1B1D20"
local base00      = "#1e2124"
local base01      = "#25282B"
local base02      = "#36393e"
local base03      = "#4b4c54"
local base04      = "#505B64"
local l_gray2     = "#686f78"
local base05      = "#c6cfd1"
local base06      = "#c3a4b3"
local base07      = "#e26d5c"
local base08      = "#ed333b"
local base09      = "#e8a63b"
local base0A      = "#4b8b51"
local base0B      = "#8391A7"
local base0C      = "#b3c3a4"
local base0D      = "#566AB1"
local base0E      = "#6DA2CF"
local base0F      = "#a6b4e7"


-- highlight dictionary
local hl = {}

local function set_hl(hl_tbl)
  for group, opts in pairs(hl_tbl) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end


--------------------------------------------------
-- UI
--------------------------------------------------
hl["ColorColumn"] = na
hl["Cursor"] = { bg = base0D }
hl["Directory"] = { fg = base0E }
hl["Error"] = { fg = base08 }
hl["LineNr"] = { link = "NonText" }
hl["ModeMsg"] = { fg = base0C }
hl["MsgArea"] = na
hl["NonText"] = { fg = base03 }
hl["Normal"] = { fg = base05 }
hl["Pmenu"] = { fg = l_gray2, bg = base01 }
hl["PmenuSel"] = { link = "Normal" }
hl["Question"] = { fg = base0C }
hl["Search"] = { fg = base00, bg = base09 }
hl["CurSearch"] = { fg = base00, bg = base07 }
hl["SpecialComment"] = { fg = base09 }
hl["SpecialKey"] = { fg = base09 }
hl["StatusLineNC"] = { link = "Statusline" }
hl["Substitute"] = { fg = base08, bg = base02 }
hl["TabLineFill"] = na
hl["Visual"] = { fg = base05, bg = "#2B3237" }
hl["Underlined"] = { underline = true }
hl["WinBarNC"] = na

hl["Conceal"] = { link = "Normal" }
hl["CursorLine"] = { bg = base02 }
hl["CursorLineNr"] = { bg = "#24292E" }
hl["Delimiter"] = { link = "Normal" }
hl["EndOfBuffer"] = { link = "NonText" }
hl["ErrorMsg"] = { link = "Error" }
hl["FoldColumn"] = { link = "NonText" }
hl["Folded"] = { link = "NonText" }
hl["IncSearch"] = { link = "Search" }
hl["MoreMsg"] = { link = "ModeMsg" }
hl["MsgSeparator"] = { link = "VertSplit" }
hl["NormalFloat"] = { fg = base05, bg = base000 }
hl["PmenuThumb"] = { link = "PmenuSel" }
hl["PmenuSbar"] = { link = "Pmenu" }
hl["QuickFixLine"] = { link = "Search" }
hl["SignColumn"] = { link = "Normal" }
hl["SpecialChar"] = { link = "Special" }
hl["StatusLine"] = { fg = base05, bg = "#24292E" }
hl["TermCursor"] = { link = "NonText" }
hl["Title"] = { link = "Directory" }
hl["Todo"] = { link = "SpecialComment" }
hl["WarningMsg"] = { link = "Error" }
hl["Whitespace"] = { link = "NonText" }
hl["WinBar"] = { link = "Normal" }
hl["WinSeparator"] = { fg = base01 }

hl["MatchParen"] = { fg = base09, bg = hl["Visual"]["bg"] }
hl["FloatBorder"] = { fg = base02, bg = hl["NormalFloat"]["bg"] }

--------------------------------------------------
--  Syntax
--------------------------------------------------
hl["Comment"] = { fg = base04 }
hl["Constant"] = { fg = base06 }
hl["Function"] = { fg = base0E }
hl["Keyword"] = { fg = base0B }
hl["Number"] = { fg = base07 }
hl["Operator"] = { fg = base09 }
hl["PreProc"] = na
hl["Special"] = na
hl["String"] = { fg = base0C }
hl["Tag"] = na

hl["Boolean"] = { link = "Constant" }
hl["Character"] = { link = "String" }
hl["Conditional"] = { link = "Statement" }
hl["Define"] = { link = "PreProc" }
hl["Exception"] = { link = "Statement" }
hl["Float"] = { link = "Number" }
hl["Identifier"] = { link = "Normal" }
hl["Include"] = { link = "PreProc" }
hl["Label"] = { link = "Conditional" }
hl["Macro"] = { link = "PreProc" }
hl["PreCondit"] = { link = "PreProc" }
hl["Repeat"] = { link = "Conditional" }
hl["Statement"] = { link = "Keyword" }
hl["StorageClass"] = { link = "Type" }
hl["Structure"] = { link = "Type" }
hl["Type"] = { link = "Normal" }
hl["Typedef"] = { link = "Type" }


--------------------------------------------------
-- Filetype
--------------------------------------------------
-- diff
hl["DiffAdd"] = { fg = hl["Normal"]["fg"], bg = utils.shade_color(base0A, -70) }
hl["DiffChange"] = { fg = hl["Normal"]["fg"], bg = utils.shade_color(base0D, -40) }
hl["DiffDelete"] = { fg = hl["Normal"]["fg"], bg = utils.shade_color(base08, -70) }
hl["DiffText"] = { fg = hl["Normal"]["fg"], bg = base0D }

-- Gitcommit (info above the diff in a commit)
-- https://github.com/vim/vim/blob/2f0936cb9a2eb026acac03e6a8fd0b2a5d97508b/runtime/syntax/gitcommit.vim
hl["gitcommitHeader"] = na
hl["gitcommitOnBranch"] = na
hl["gitcommitType"] = { fg = base06 }

hl["gitcommitArrow"] = { link = "Statement" }
hl["gitcommitBlank"] = { link = "DiffAdd" }
hl["gitcommitBranch"] = { link = "DiffAdd" }
hl["gitcommitDiscarded"] = { link = "DiffAdd" }
hl["gitcommitDiscardedFile"] = { link = "DiffAdd" }
hl["gitcommitDiscardedType"] = { link = "DiffDelete" }
hl["gitcommitSummary"] = { link = "Directory" }
hl["gitcommitUnmerged"] = { link = "DiffAdd" }

-- Gitcommit diffs
-- https://github.com/vim/vim/blob/c54f347d63bcca97ead673d01ac6b59914bb04e5/runtime/syntax/diff.vim
hl["diffAdded"] = { link = "DiffAdd" }
hl["diffChanged"] = { link = "DiffChange" }
hl["diffRemoved"] = { link = "DiffDelete" }

-- Help
-- https://github.com/vim/vim/blob/2d8ed0203aedd5f6c22efa99394a3677c17c7a7a/runtime/syntax/help.vim
hl["helpCommand"] = { link = "Normal" }
hl["helpExample"] = { link = "String" }
hl["helpHyperTextEntry"] = { link = "Directory" }
hl["helpOption"] = { link = "Normal" }
hl["helpVim"] = { link = "Normal" }

-- Markdown
-- rules = horizontal bars
hl["markdownHeadingRule"] = { link = "markdownRule" }
hl["markdownRule"] = { link = "NonText" }

--------------------------------------------------
-- Treesitter
--------------------------------------------------
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights
hl["@namespace"] = { fg = base0E }
hl["@punctuation"] = na
hl["@string.regex"] = { fg = base0A }
hl["@markup.raw.block"] = { bg = base01 }
hl["@markup.raw.markdown_inline"] = { link = "@markup.raw.block" }
hl["@text.uri"] = { fg = base0F, underline = true }


hl["@constant.builtin"] = { link = "Constant" }
hl["@function.call"] = { link = "Normal" }
hl["@markup.heading"] = { link = "Title" }
hl["@method.call"] = { link = "Normal" }
hl["@property.json"] = { link = "String" }
hl["@string.documentation"] = { link = "Comment" }
hl["@string.escape"] = { link = "@string.regex" }
hl["@string.special"] = { link = "@string.regex" }
hl["@text.literal"] = { link = "Normal" }
hl["@text.reference"] = { link = "String" }

-- Markdown
hl["@markup.link.markdown_inline"] = na
hl["@markup.link.url.markdown_inline"] = { link = "@text.uri" }
hl["@markup.link.label.markdown_inline"] = { link = "String" }
hl["@markup.raw.delimiter.markdown"] = { link = "@markup.quote.markdown" }
hl["@markup.quote.markdown"] = { link = "Comment" }

-- Latex
hl["@markup.link.latex"] = { link = "Keyword" }
hl["@markup.environment.latex"] = { link = "@markup.raw.block" }
hl["@module.latex"] = { link = "Function" }
hl["@punctuation.special.latex"] = { link = "Function" }

for _, level in pairs({ "1", "2", "3", "4" }) do
  hl["@markup.heading." .. level .. ".latex"] = { link = "String" }
end

--  for _, level in pairs({ "1", "2", "3", "4", "5", "6" }) do
--    hl["@markup.heading." .. level .. ".markdown"] = { fg = base0B }
--  end

-- Comment keywords
for type, color in pairs({
  danger = base08,
  warning = base09,
  todo = base09,
  note = base0E,
}) do
  hl["@text." .. type] = { fg = color }
end


--------------------------------------------------
-- LSP
--------------------------------------------------
for type, color in pairs({
  Error = base08,
  Warn = base09,
  Info = base0E,
  Hint = base05,
  Ok = base0A
}) do
  hl["Diagnostic" .. type] = { fg = color }
  hl["DiagnosticSign" .. type] = utils.update(hl["Normal"], { fg = color })
  hl["DiagnosticVirtualText" .. type] = { fg = color }
  hl["DiagnosticUnderline" .. type] = { sp = utils.shade_color(color, -15), undercurl = true }
end

hl["DiagnosticUnnecessary"] = utils.update(hl["Comment"], { strikethrough = true })

-- Handlers
hl["LspSignatureActiveParameter"] = { fg = base08 }


--------------------------------------------------
-- Semantic Tokens
--------------------------------------------------
--- Hide all semantic highlights
for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
  vim.api.nvim_set_hl(0, group, {})
end


--------------------------------------------------
-- call highlight
--------------------------------------------------
set_hl(hl)
