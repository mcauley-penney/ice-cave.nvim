-- Author: mp
-- Notes:
-- 	hi groups: https://neovim.io/doc/user/syntax.html#highlight-groups
-- 	bg, also set in terminal cfg: #1c2128

vim.g.colors_name = "ice-cave"

local utils       = require("utils")

local na          = {}
local base000     = "#1B1D20"
local base00      = "#1e2124"
local base01      = "#24292E"
local base011     = "#2B3237"
local base02      = "#36393e"
local base03      = "#40484E"
local base04      = "#4C555C"
local base05      = "#686f78"
local base06      = "#E2E7E8"
local base07      = "#c3a4b3"
local base08      = "#e26d5c"
local base09      = "#ed333b"
local base0A      = "#e8a63b"
local base0B      = "#4b8b51"
local base0C      = "#8391A7"
local base0D      = "#b3c3a4"
local base0E      = "#566AB1"
local base0F      = "#A2C4FF"


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
hl["Conceal"] = { link = "Normal" }
hl["CurSearch"] = { fg = base00, bg = base08 }
hl["Cursor"] = { bg = base09 }
hl["CursorLine"] = { bg = base01 }
hl["CursorLineNr"] = { link = "Normal" }
hl["Delimiter"] = { link = "Normal" }
hl["Directory"] = { fg = base0F }
hl["EndOfBuffer"] = { link = "NonText" }
hl["Error"] = { fg = base09 }
hl["ErrorMsg"] = { link = "Error" }
hl["FoldColumn"] = { link = "NonText" }
hl["Folded"] = { link = "NonText" }
hl["IncSearch"] = { link = "Search" }
hl["LineNr"] = { link = "NonText" }
hl["ModeMsg"] = { fg = base07 }
hl["MoreMsg"] = { link = "ModeMsg" }
hl["MsgArea"] = na
hl["MsgSeparator"] = { link = "VertSplit" }
hl["NonText"] = { fg = base03 }
hl["Normal"] = { fg = base06, bg = base00 }
hl["NormalFloat"] = { fg = base06, bg = base000 }
hl["Pmenu"] = { fg = base05, bg = base01 }
hl["PmenuSbar"] = { link = "Normal" }
hl["PmenuSel"] = { fg = base00, bg = base08 }
hl["PmenuThumb"] = { bg = base011 }
hl["Question"] = { fg = base0D }
hl["QuickFixLine"] = { link = "Search" }
hl["Search"] = { fg = base00, bg = base0A }
hl["SignColumn"] = { link = "Normal" }
hl["SpecialChar"] = { link = "Special" }
hl["SpecialComment"] = { fg = base0A }
hl["SpecialKey"] = { fg = base0A }
hl["StatusLine"] = { fg = base06, bg = base01 }
hl["StatusLineNC"] = na
hl["Substitute"] = { fg = base09, bg = base02 }
hl["TabLineFill"] = na
hl["TermCursor"] = { link = "Cursor" }
hl["Title"] = { link = "Directory" }
hl["Todo"] = { link = "SpecialComment" }
hl["Underlined"] = { underline = true }
hl["Visual"] = { fg = base06, bg = base011 }
hl["WarningMsg"] = { link = "Error" }
hl["Whitespace"] = { link = "NonText" }
hl["WinBar"] = { link = "Normal" }
hl["WinBarNC"] = na

hl["WinSeparator"] = { fg = hl["NormalFloat"]["bg"] }
hl["MatchParen"] = { fg = base0A, bg = hl["Visual"]["bg"] }
hl["FloatBorder"] = { fg = base02, bg = hl["NormalFloat"]["bg"] }
hl["FloatTitle"] = { fg = base0F, bg = hl["NormalFloat"]["bg"] }

--------------------------------------------------
--  Syntax
--------------------------------------------------
hl["Comment"] = { fg = base04 }
hl["Constant"] = { fg = base07 }
hl["Function"] = { fg = base0F }
hl["Keyword"] = { fg = base0C }
hl["Number"] = { fg = base08 }
hl["Operator"] = { fg = base0A }
hl["PreProc"] = na
hl["Special"] = na
hl["String"] = { fg = base0D }
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
hl["DiffAdd"] = { fg = hl["Normal"]["fg"], bg = utils.shade_color(base0B, -70) }
hl["DiffChange"] = { fg = hl["Normal"]["fg"], bg = utils.shade_color(base0E, -40) }
hl["DiffDelete"] = { fg = hl["Normal"]["fg"], bg = utils.shade_color(base09, -70) }
hl["DiffText"] = { fg = hl["Normal"]["fg"], bg = base0E }

-- Gitcommit (info above the diff in a commit)
-- https://github.com/vim/vim/blob/2f0936cb9a2eb026acac03e6a8fd0b2a5d97508b/runtime/syntax/gitcommit.vim
hl["gitcommitHeader"] = na
hl["gitcommitOnBranch"] = na
hl["gitcommitType"] = { fg = base07 }

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
hl["@namespace"] = { fg = base0F }
hl["@punctuation"] = na
hl["@string.regex"] = { fg = base0B }
hl["@markup.raw.block"] = { bg = base01 }
hl["@markup.raw.markdown_inline"] = { link = "@markup.raw.block" }
hl["@text.uri"] = { fg = base0C, underline = true }

hl["@constant.builtin"] = { link = "Constant" }
hl["@function.call"] = { link = "Normal" }
hl["@markup.heading"] = { link = "Function" }
hl["@method.call"] = { link = "Normal" }
hl["@property"] = { link = "Keyword" }
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

-- Comment keywords
for type, color in pairs({
  error =  { fg = base09, bold = true },
  danger = { fg = base09, bold = true },
  warning = { fg = base0A, bold = true },
  todo = { fg = base0F, bold = true },
  note = { fg = base06, bold = true },
}) do
  hl["@comment." .. type] = color
  hl["@comment." .. type .. ".comment"] = color
end


--------------------------------------------------
-- LSP
--------------------------------------------------
for type, color in pairs({
  Error = base09,
  Warn = base0A,
  Info = base0F,
  Hint = base06,
  Ok = base0B
}) do
  hl["Diagnostic" .. type] = { fg = color }
  hl["DiagnosticSign" .. type] = utils.update(hl["Normal"], { fg = color })
  hl["DiagnosticVirtualText" .. type] = { fg = color }
  hl["DiagnosticUnderline" .. type] = { sp = utils.shade_color(color, -15), undercurl = true }
end

hl["DiagnosticUnnecessary"] = utils.update(hl["Comment"], { strikethrough = true })

-- Handlers
hl["LspSignatureActiveParameter"] = { fg = base09 }


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
