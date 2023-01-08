--[[
	Author: MP
	Notes:
		hi groups: https://neovim.io/doc/user/syntax.html#highlight-groups
		bg, set in term cfg: #262626
]]

local na = {}
local gray = {
	[0] = "#222222",
	[1] = "#262626",
	[2] = "#3b3b3b",
	[3] = "#515151",
	[4] = "#676767",
	[5] = "#DBD3C9",
}

local green = {
	[1] = "#4b8b51",
	[2] = "#8CA576",
	[3] = "#B3C3A4",
}

local blue = {
	[1] = "#616E88",
	[2] = "#8296b0",
	[3] = "#9aabbc",
}

local red = {
	[0] = "#C3A4B3",
	[1] = "#e26d5c",
	[2] = "Red",
}

local yellow = {
	[0] = "#FEAD4C",
}

-- highlight dictionary
local hl = {}

local function set_hl(hl_tbl)
	for group, opts in pairs(hl_tbl) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

--------------------------------------------------
-- Hightlights
--------------------------------------------------

-- UI --
hl["ColorColumn"] = na
hl["Cursor"] = { fg = red[2] }
hl["CursorLine"] = { fg = yellow[0], bg = gray[2] }
hl["CursorLineNr"] = { fg = gray[3], bg = gray[2] }
hl["Directory"] = { fg = blue[2], italic = true }
hl["Error"] = { fg = red[2] }
hl["MatchParen"] = { fg = red[2], bold = true }
hl["ModeMsg"] = { fg = green[3] }
hl["MsgArea"] = na
hl["NonText"] = { fg = gray[3], italic = true }
hl["Normal"] = { fg = gray[5], bg = gray[1] }
hl["PmenuSel"] = {bg = gray[3]}
hl["Question"] = { fg = green[3] }
hl["Search"] = { fg = red[2], bg = gray[2] }
hl["SpecialComment"] = { fg = yellow[0], bold = true }
hl["SpecialKey"] = { fg = yellow[0], bold = true }
hl["StatusLine"] = { bg = gray[2] }
hl["StatusLineNC"] = na
hl["TabLineFill"] = na
hl["VertSplit"] = { fg = gray[2] }
hl["Visual"] = { bg = gray[2] }
hl["Conceal"] = { link = "Normal" }
hl["Delimiter"] = { link = "Special" }
hl["EndOfBuffer"] = { link = "NonText" }
hl["ErrorMsg"] = { link = "Error" }
hl["FloatBorder"] = { link = "StatusLine" }
hl["FoldColumn"] = { link = "ColorColumn" }
hl["Folded"] = { link = "NonText" }
hl["IncSearch"] = { link = "Search" }
hl["Label"] = { link = "Keyword" }
hl["LineNr"] = { link = "NonText" }
hl["MoreMsg"] = { link = "ModeMsg" }
hl["Pmenu"] = { link = "StatusLine" }
hl["PmenuThumb"] = {link = "PmenuSel"}
hl["PmenuSbar"] = {link = "Pmenu"}
hl["QuickFixLine"] = { link = "Search" }
hl["SignColumn"] = { link = "StatusLineNC" }
hl["SpecialChar"] = { link = "Special" }
hl["Substitute"] = { link = "Search" }
hl["Title"] = { link = "Directory" }
hl["Todo"] = { link = "SpecialComment" }
hl["WarningMsg"] = { link = "Error" }
hl["Whitespace"] = { link = "NonText" }
hl["WinBar"] = { link = "Normal" }


-- Syntax --
hl["Character"] = { fg = green[2] }
hl["Comment"] = { fg = gray[4], italic = true }
hl["Constant"] = { fg = red[0] }
hl["Exception"] = { fg = red[2] }
hl["Function"] = { italic = true }
hl["Identifier"] = na
hl["Keyword"] = { fg = blue[2] }
hl["Number"] = { fg = red[1] }
hl["PreProc"] = { bg = gray[0] }
hl["Special"] = na
hl["Statement"] = { fg = yellow[0] }
hl["String"] = { fg = green[3] }
hl["Tag"] = na
hl["Type"] = { fg = blue[3] }
hl["Boolean"] = { link = "Constant" }
hl["Conditional"] = { link = "Statement" }
hl["Define"] = { link = "PreProc" }
hl["Exception"] = { link = "Statement" }
hl["Float"] = { link = "Number" }
hl["Include"] = { link = "PreProc" }
hl["Macro"] = { link = "PreProc" }
hl["Operator"] = { link = "Statement" }
hl["PreCondit"] = { link = "PreProc" }
hl["Repeat"] = { link = "Statement" }
hl["StorageClass"] = { link = "Type" }
hl["Structure"] = { link = "Type" }
hl["Typedef"] = { link = "Type" }


-- Filetype --
-- Git
-- https://github.com/vim/vim/blob/2f0936cb9a2eb026acac03e6a8fd0b2a5d97508b/runtime/syntax/gitcommit.vim
hl["gitcommitDiscardedType"] = { fg = red[1] }
hl["gitcommitHeader"] = { bg = gray[0], italic = true }
hl["gitcommitOnBranch"] = { bg = gray[0], italic = true }
hl["gitcommitType"] = { fg = red[0], italic = true }
hl["gitcommitArrow"] = { link = "Statement" }
hl["gitcommitBlank"] = { link = "Success" }
hl["gitcommitBranch"] = { link = "Success" }
hl["gitcommitDiscarded"] = { link = "Success" }
hl["gitcommitDiscardedFile"] = { link = "Success" }
hl["gitcommitSummary"] = { link = "Directory" }
hl["gitcommitUnmerged"] = { link = "Success" }

-- Help
-- https://github.com/vim/vim/blob/2d8ed0203aedd5f6c22efa99394a3677c17c7a7a/runtime/syntax/help.vim
hl['helpCommand'] = { link = "Normal" }
hl['helpExample'] = { link = "String" }
hl['helpHyperTextEntry'] = { link = "Directory" }
hl['helpOption'] = { link = "Normal" }
hl['helpVim'] = { link = "Normal" }

-- diff
-- https://github.com/vim/vim/blob/c54f347d63bcca97ead673d01ac6b59914bb04e5/runtime/syntax/diff.vim
hl["diffAdded"] = { fg = green[3] }
hl["diffChanged"] = { fg = yellow[0] }
hl["diffFile"] = { bg = gray[0], italic = true }
hl["diffLine"] = { fg = blue[2], italic = true, underline = true }
hl["diffNewFile"] = { bg = gray[0], underline = true }
hl["diffRemoved"] = { fg = red[1] }
hl["diffIndexLine"] = { link = "PreProc" }
hl["diffNoEOL"] = { link = "DiagnosticError" }
hl["diffOldFile"] = { link = "PreProc" }
hl["diffSubname"] = { link = "Directory" }


-- Lsp --
for type, color in pairs({
	Error = red[2],
	Warn = yellow[0],
	Info = blue[2],
	Hint = gray[5],
	Ok = green[1]
}) do
	hl["Diagnostic" .. type] = { fg = color }
	hl["DiagnosticUnderline" .. type] = { sp = color, underline = true }
end

-- Handlers
hl["LspSignatureActiveParameter"] = { fg = red[2], italic = true }


-- Treesitter --
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights
hl["@namespace"] = { fg = blue[1] }
hl["@punctuation.special"] = { fg = blue[3] }
hl["@string.regex"] = { fg = green[1] }
hl["@text.emphasis"] = { italic = true }  -- "Normal" for markup languages
hl["@text.strong"] = { bold = true }
hl["@text.underline"] = {underline = true}
hl["@text.uri"] = { fg = blue[3] }
hl["@text.literal"] = { link = "Normal"}
hl["@string.escape"] = { link = "@string.regex" }
hl["@string.special"] = { link = "@string.regex" }

-- Keywords
for type, color in pairs({
	danger = red[2],
	warning = yellow[0],
	todo = yellow[0],
	note = blue[2],
}) do
	hl["@text." .. type] = { fg = color, bold = true }
end


--------------------------------------------------
-- Execute
--------------------------------------------------
vim.g.colors_name = "still_light"

-- call highlight
set_hl(hl)
