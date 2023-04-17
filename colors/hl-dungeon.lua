-- Author: mp
-- Notes:
-- 	hi groups: https://neovim.io/doc/user/syntax.html#highlight-groups
-- 	bg, also set in terminal cfg: #1c2128


local utils = require("utils")


local na    = {}

local gray0 = "#1c2128"
local gray1 = "#2F2F2F"
local gray2 = "#3b3b3b"
local gray3 = "#585654"
local gray4 = "#7d7a77"
local gray5 = "#E9E4DE"

local red0  = "#C3A4B3"
local red1  = "#e26d5c"
local red2  = "#ff0000"

local ylw0  = "#E8A63B"

local grn0  = "#4b8b51"
local grn1  = "#B3C3A4"

local blue0 = "#3B4A80"
local blue1 = "#8296b0"
local blue2 = "#A6B4E7"


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
hl["Cursor"] = { bg = red2 }
hl["CursorLine"] = { fg = ylw0, bg = gray2 }
hl["Directory"] = { fg = blue1 }
hl["Error"] = { fg = red2 }
hl["Label"] = na
hl["ModeMsg"] = { fg = grn1 }
hl["MsgArea"] = na
hl["NonText"] = { fg = gray3 }
hl["Normal"] = { fg = gray5, bg = gray0 }
hl["PmenuSel"] = { bg = gray2 }
hl["Question"] = { fg = grn1 }
hl["Search"] = { fg = blue1, bg = gray2 }
hl["SpecialComment"] = { fg = ylw0 }
hl["SpecialKey"] = { fg = ylw0 }
hl["StatusLine"] = { bg = gray1 }
hl["StatusLineNC"] = na
hl["Substitute"] = { fg = red2, bg = gray2 }
hl["TabLineFill"] = na
hl["VertSplit"] = { fg = gray2 }
hl["Visual"] = { bg = gray2 }
hl["Conceal"] = { link = "Normal" }
hl["CursorLineNr"] = { link = "Normal" }
hl["Delimiter"] = { link = "Special" }
hl["EndOfBuffer"] = { link = "NonText" }
hl["ErrorMsg"] = { link = "Error" }
hl["FloatBorder"] = { link = "Pmenu" }
hl["FoldColumn"] = { link = "Folded" }
hl["Folded"] = { link = "NonText" }
hl["IncSearch"] = { link = "Search" }
hl["LineNr"] = { link = "NonText" }
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
hl["Underlined"] = { underline = true }
hl["WarningMsg"] = { link = "Error" }
hl["Whitespace"] = { link = "NonText" }
hl["WinBar"] = { link = "Normal" }


--------------------------------------------------
--  Syntax
--------------------------------------------------
hl["Character"] = { link = "String" }
hl["Comment"] = { fg = gray4 }
hl["Constant"] = { fg = red0 }
hl["Exception"] = { fg = red2 }
hl["Keyword"] = { fg = blue1 }
hl["Number"] = { fg = red1 }
hl["Operator"] = { fg = ylw0 }
hl["PreProc"] = { bg = gray0 }
hl["Special"] = na
hl["String"] = { fg = grn1 }
hl["Tag"] = na
hl["Type"] = { fg = blue1 }
hl["Boolean"] = { link = "Constant" }
hl["Conditional"] = { link = "Statement" }
hl["Define"] = { link = "PreProc" }
hl["Exception"] = { link = "Statement" }
hl["Float"] = { link = "Number" }
hl["Function"] = { link = "Normal" }
hl["Identifier"] = { link = "Normal" }
hl["Include"] = { link = "PreProc" }
hl["Macro"] = { link = "PreProc" }
hl["PreCondit"] = { link = "PreProc" }
hl["Repeat"] = { link = "Statement" }
hl["Statement"] = { link = "Keyword" }
hl["StorageClass"] = { link = "Type" }
hl["Structure"] = { link = "Type" }
hl["Typedef"] = { link = "Type" }


--------------------------------------------------
-- Filetype
--------------------------------------------------
-- diff
-- https://github.com/vim/vim/blob/c54f347d63bcca97ead673d01ac6b59914bb04e5/runtime/syntax/diff.vim
hl["DiffAdd"] = { bg = utils.shade_color(grn0, -70) }
hl["DiffChange"] = { bg = utils.shade_color(blue0, -40) }
hl["DiffDelete"] = { bg = utils.shade_color(red2, -70) }
hl["DiffText"] = { bg = blue0 }

-- Gitcommit (info above the diff in a commit)
-- https://github.com/vim/vim/blob/2f0936cb9a2eb026acac03e6a8fd0b2a5d97508b/runtime/syntax/gitcommit.vim
hl["gitcommitDiscardedType"] = { link = "DiffDelete" }
hl["gitcommitHeader"] = { bg = gray0 }
hl["gitcommitOnBranch"] = { bg = gray0 }
hl["gitcommitType"] = { fg = red0 }
hl["gitcommitArrow"] = { link = "Statement" }
hl["gitcommitBlank"] = { link = "DiffAdd" }
hl["gitcommitBranch"] = { link = "DiffAdd" }
hl["gitcommitDiscarded"] = { link = "DiffAdd" }
hl["gitcommitDiscardedFile"] = { link = "DiffAdd" }
hl["gitcommitSummary"] = { link = "Directory" }
hl["gitcommitUnmerged"] = { link = "DiffAdd" }

-- Gitcommit diffs
hl["diffAdded"] = { link = "DiffAdd" }
hl["diffChanged"] = { link = "DiffChange" }
hl["diffRemoved"] = utils.update(hl["DiffDelete"], { fg = nil })

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
-- Lsp
--------------------------------------------------
for type, color in pairs({
	Error = red2,
	Warn = ylw0,
	Info = blue1,
	Hint = gray5,
	Ok = grn0
}) do
	hl["Diagnostic" .. type] = { fg = color }
	hl["DiagnosticSign" .. type] = utils.update(hl["Normal"], { fg = color })
	hl["DiagnosticVirtualText" .. type] = {
		fg = color,
		bg = utils.shade_color(color, -80)
	}
	hl["DiagnosticUnderline" .. type] = { sp = color, underline = true }
end

-- Handlers
hl["LspSignatureActiveParameter"] = { fg = red2 }


--------------------------------------------------
-- Treesitter
--------------------------------------------------
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights
hl["@namespace"] = { fg = blue1 }
hl["@string.regex"] = { fg = grn0 }
hl["@text.emphasis"] = na
hl["@text.strong"] = na
hl["@text.uri"] = { fg = blue2 }
hl["@property"] = { link = "@field" }
hl["@punctuation.special"] = { link = "Normal" }
hl["@string.documentation"] = { link = "Comment" }
hl["@string.escape"] = { link = "@string.regex" }
hl["@string.special"] = { link = "@string.regex" }
hl["@text.literal"] = { link = "Normal" }

-- Comment keywords
for type, color in pairs({
	danger = red2,
	warning = ylw0,
	todo = ylw0,
	note = blue1,
}) do
	hl["@text." .. type] = { fg = color }
end


vim.g.colors_name = "hl-dungeon"

-- call highlight
set_hl(hl)
