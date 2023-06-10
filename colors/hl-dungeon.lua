-- Author: mp
-- Notes:
-- 	hi groups: https://neovim.io/doc/user/syntax.html#highlight-groups
-- 	bg, also set in terminal cfg: #1c2128


local utils = require("utils")


local na     = {}
local base00 = "#1c2128"
local base01 = "#25282E"
local base02 = "#30343C"
local base03 = "#474D58"
local base04 = "#606368"
local base05 = "#cecece"
local base06 = "#c3a4b3"
local base07 = "#e26d5c"
local base08 = "#ff0000"
local base09 = "#e8a63b"
local base0A = "#4b8b51"
local base0B = "#8391A7"
local base0C = "#b3c3a4"
local base0D = "#3b4a80"
local base0E = "#6C94BC"
local base0F = "#a6b4e7"


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
hl["Cursor"] = { bg = base08 }
hl["Directory"] = { fg = base0E }
hl["Error"] = { fg = base08 }
hl["LineNr"] = { fg = base04 }
hl["ModeMsg"] = { fg = base0C }
hl["MsgArea"] = na
hl["NonText"] = { fg = base03 }
hl["Normal"] = { fg = base05, bg = base00 }
hl["PmenuSel"] = { bg = base02 }
hl["Question"] = { fg = base0C }
hl["Search"] = { fg = base0E, bg = base02 }
hl["SpecialComment"] = { fg = base09 }
hl["SpecialKey"] = { fg = base09 }
hl["StatusLine"] = { bg = base01 }
hl["StatusLineNC"] = na
hl["Substitute"] = { fg = base08, bg = base02 }
hl["TabLineFill"] = na
hl["Visual"] = { bg = base02 }
hl["Underlined"] = { underline = true }

hl["Conceal"] = { link = "Normal" }
hl["CursorLine"] = utils.update(hl["Visual"], { fg = base09 })
hl["CursorLineNr"] = { link = "Normal" }
hl["Delimiter"] = { link = "Normal" }
hl["EndOfBuffer"] = { link = "NonText" }
hl["ErrorMsg"] = { link = "Error" }
hl["FloatBorder"] = { bg = hl["StatusLine"]["bg"], fg = hl["StatusLine"]["bg"] }
hl["FoldColumn"] = { link = "Folded" }
hl["Folded"] = { link = "NonText" }
hl["IncSearch"] = { link = "Search" }
hl["MatchParen"] = { link = "CursorLine" }
hl["MoreMsg"] = { link = "ModeMsg" }
hl["Pmenu"] = { link = "StatusLine" }
hl["PmenuThumb"] = { link = "PmenuSel" }
hl["PmenuSbar"] = { link = "Pmenu" }
hl["QuickFixLine"] = { link = "Search" }
hl["SignColumn"] = { link = "Normal" }
hl["SpecialChar"] = { link = "Special" }
hl["TermCursor"] = { link = "NonText" }
hl["Title"] = { link = "Directory" }
hl["Todo"] = { link = "SpecialComment" }
hl["VertSplit"] = { link = "NonText" }
hl["WarningMsg"] = { link = "Error" }
hl["Whitespace"] = { link = "NonText" }
hl["WinBar"] = { link = "Normal" }


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
-- https://github.com/vim/vim/blob/c54f347d63bcca97ead673d01ac6b59914bb04e5/runtime/syntax/diff.vim
hl["DiffAdd"] = { bg = utils.shade_color(base0A, -70) }
hl["DiffChange"] = { bg = utils.shade_color(base0D, -40) }
hl["DiffDelete"] = { bg = utils.shade_color(base08, -70) }
hl["DiffText"] = { bg = base0D }


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
hl["markdownRule"] = { link = "NonText" }
hl["markdownHeadingRule"] = { link = "markdownRule" }


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
	hl["DiagnosticVirtualText" .. type] = {
		fg = color,
		bg = utils.shade_color(color, -80)
	}
	hl["DiagnosticUnderline" .. type] = { sp = utils.shade_color(color, -15), underdashed = true }
end

hl["DiagnosticUnnecessary"] = utils.update(hl["Comment"], { strikethrough = true })

-- Handlers
hl["LspSignatureActiveParameter"] = { fg = base08 }


--------------------------------------------------
-- Treesitter
--------------------------------------------------
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights
hl["@namespace"] = { fg = base0E }
hl["@string.regex"] = { fg = base0A }
hl["@text.emphasis"] = na
hl["@text.strong"] = na
hl["@text.uri"] = { fg = base0F }

hl["@constant.builtin"] = { link = "Constant" }
hl["@function.call"] = { link = "Normal" }
hl["@method.call"] = { link = "Normal" }
hl["@property"] = { link = "@field" }
hl["@punctuation.special"] = { link = "Normal" }
hl["@string.documentation"] = { link = "Comment" }
hl["@string.escape"] = { link = "@string.regex" }
hl["@string.special"] = { link = "@string.regex" }
hl["@text.literal"] = { link = "Normal" }

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
-- Semantic Tokens
--------------------------------------------------
--- Hide all semantic highlights
for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
	vim.api.nvim_set_hl(0, group, {})
end




vim.g.colors_name = "hl-dungeon"

-- call highlight
set_hl(hl)
