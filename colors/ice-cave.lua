local utils   = require("utils")

local hl      = {}
local gray0   = "#1e2124"
local gray1   = "#212429"
local gray2   = "#24282d"
local gray3   = "#262D31"
local gray4   = "#36393e"
local gray5   = "#545565"
local gray6   = "#5D5F71"
local gray8   = "#CCD5E5"
local gray9   = "#D3D9E4"
local red1    = "#c3a4b3"
local red2    = "#e26d5c"
local red3    = "#ed333b"
local yellow1 = "#e8a63b"
local yellow2 = "#e2b05c"
local green1  = "#4b8b51"
local green2  = "#b3c3a4"
local blue1   = "#566ab1"
local blue2   = "#99ABCB"
local blue3   = "#98B4FE"


vim.g.colors_name = "ice-cave"


--------------------------------------------------
-- UI
--------------------------------------------------
hl["ColorColumn"]    = {}
hl["Conceal"]        = { link = "Normal" }
hl["CurSearch"]      = { fg = gray0, bg = red2 }
hl["Cursor"]         = { bg = red3 }
hl["CursorLine"]     = { bg = gray2 }
hl["CursorLineNr"]   = { link = "Normal" }
hl["Delimiter"]      = { link = "Normal" }
hl["Directory"]      = { fg = blue3 }
hl["EndOfBuffer"]    = { link = "NonText" }
hl["Error"]          = { fg = red3 }
hl["ErrorMsg"]       = { link = "Error" }
hl["FoldColumn"]     = { link = "NonText" }
hl["Folded"]         = { fg = gray5, bg = gray2 }
hl["IncSearch"]      = { link = "Search" }
hl["LineNr"]         = { link = "NonText" }
hl["ModeMsg"]        = { fg = red1 }
hl["MoreMsg"]        = { link = "ModeMsg" }
hl["MsgArea"]        = {}
hl["MsgSeparator"]   = { fg = gray2 }
hl["NonText"]        = { fg = gray5 }
hl["Normal"]         = { fg = gray8 }
hl["NormalFloat"]    = { fg = gray9, bg = gray1 }
hl["Pmenu"]          = { fg = gray6, bg = gray2 }
hl["PmenuMatch"]     = { fg = blue3, bg = gray2 }
hl["PmenuMatchSel"]  = { fg = yellow1, bg = blue3 }
hl["PmenuSbar"]      = { link = "Normal" }
hl["PmenuSel"]       = { fg = gray0, bg = blue3 }
hl["PmenuThumb"]     = { bg = gray3 }
hl["Question"]       = { fg = green2 }
hl["QuickFixLine"]   = { link = "Search" }
hl["Search"]         = { fg = gray0, bg = yellow2 }
hl["SignColumn"]     = { link = "Normal" }
hl["SpecialChar"]    = { link = "Special" }
hl["SpecialComment"] = { fg = yellow2 }
hl["SpecialKey"]     = { fg = yellow2 }
hl["StatusLine"]     = { fg = gray8 }
hl["StatusLineNC"]   = {}
hl["Substitute"]     = { fg = red3, bg = gray4 }
hl["TabLineFill"]    = {}
hl["TermCursor"]     = { link = "Cursor" }
hl["Title"]          = { link = "Directory" }
hl["Todo"]           = { link = "SpecialComment" }
hl["Underlined"]     = { underline = true }
hl["Visual"]         = { bg = gray2 }
hl["WarningMsg"]     = { link = "Error" }
hl["Whitespace"]     = { link = "NonText" }
hl["WinBar"]         = { link = "Normal" }
hl["WinBarNC"]       = {}

hl["WinSeparator"]   = { fg = hl["NormalFloat"]["bg"] }
hl["MatchParen"]     = { fg = yellow2, bg = hl["Visual"]["bg"] }
hl["FloatBorder"]    = { fg = gray4, bg = hl["NormalFloat"]["bg"] }
hl["FloatTitle"]     = { fg = blue3, bg = hl["NormalFloat"]["bg"] }


--------------------------------------------------
--  Syntax
--------------------------------------------------
hl["Comment"] = { fg = gray6 }
hl["Constant"] = { fg = red1 }
hl["Function"] = { fg = blue3 }
hl["Keyword"] = { fg = blue2 }
hl["Number"] = { fg = red2 }
hl["Operator"] = { fg = yellow2 }
hl["PreProc"] = {}
hl["Special"] = {}
hl["String"] = { fg = green2 }
hl["Tag"] = {}

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
hl["Type"] = { fg = blue2 }
hl["Typedef"] = { link = "Type" }


--------------------------------------------------
-- Filetype
--------------------------------------------------
-- diff
hl["DiffAdd"] = { bg = utils.tint(green1, -65) }
hl["DiffChange"] = { bg = utils.tint(blue1, -40) }
hl["DiffDelete"] = { bg = utils.tint(red3, -72) }
hl["DiffText"] = { bg = blue1 }

-- Gitcommit diffs
-- https://github.com/vim/vim/blob/c54f347d63bcca97ead673d01ac6b59914bb04e5/runtime/syntax/diff.vim
hl["diffAdded"] = { link = "DiffAdd" }
hl["diffChanged"] = { link = "DiffChange" }
hl["diffRemoved"] = { link = "DiffDelete" }

-- Gitcommit (info above the diff in a commit)
-- https://github.com/vim/vim/blob/2f0936cb9a2eb026acac03e6a8fd0b2a5d97508b/runtime/syntax/gitcommit.vim
hl["gitcommitHeader"] = {}
hl["gitcommitOnBranch"] = {}
hl["gitcommitType"] = { fg = red1 }

hl["gitcommitArrow"] = { link = "Statement" }
hl["gitcommitBlank"] = { link = "DiffAdd" }
hl["gitcommitBranch"] = { link = "DiffAdd" }
hl["gitcommitDiscarded"] = { link = "DiffAdd" }
hl["gitcommitDiscardedFile"] = { link = "DiffAdd" }
hl["gitcommitDiscardedType"] = { link = "DiffDelete" }
hl["gitcommitSummary"] = { link = "Directory" }
hl["gitcommitUnmerged"] = { link = "DiffAdd" }

-- Help
-- https://github.com/vim/vim/blob/2d8ed0203aedd5f6c22efa99394a3677c17c7a7a/runtime/syntax/help.vim
hl["helpCommand"] = { link = "Normal" }
hl["helpExample"] = { link = "String" }
hl["helpHyperTextEntry"] = { link = "Directory" }
hl["helpOption"] = { link = "Normal" }
hl["helpVim"] = { link = "Normal" }

-- Markdown
hl["markdownBlockquote"] = { link = "NonText" }
hl["markdownCodeBlock"] = { bg = gray3 }
hl["markdownHeadingRule"] = { link = "markdownRule" }
hl["markdownLinkText"] = { link = "String" }
hl["markdownListMarker"] = { link = "Normal" }
hl["markdownRule"] = { link = "NonText" }
hl["markdownUrl"] = { link = "@text.uri" }

for level = 1, 6 do
  local heading = "markdownH" .. level
  hl[heading] = { fg = blue3 }
  hl[heading .. "Delimiter"] = { link = heading }
end

--------------------------------------------------
-- Treesitter
--------------------------------------------------
-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights
hl["@namespace"] = { fg = blue3 }
hl["@number.comment"] = { link = "Comment" }
hl["@punctuation"] = { link = "Normal" }
hl["@string.regex"] = { fg = green1 }
hl["@markup.raw.block"] = { bg = gray2 }
hl["@markup.raw.markdown_inline"] = { link = "@markup.raw.block" }
hl["@text.uri"] = { fg = blue2, underline = true }

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

-- Latex
hl["@markup.link.markdown_inline"] = { link = "Normal" }
hl["@markup.link.label"] = { link = "String" }
hl["@markup.link.latex"] = { link = "Keyword" }
hl["@markup.environment.latex"] = { link = "@markup.raw.block" }
hl["@markup.quote.markdown"] = { link = "Comment" }
hl["@module.latex"] = { link = "Function" }
hl["@punctuation.special.latex"] = { link = "Function" }

for level = 1, 4 do
  hl["@markup.heading." .. level .. ".latex"] = { link = "String" }
end

-- Comment keywords
for type, color in pairs({
  error = { fg = red3, bold = true },
  danger = { fg = red3, bold = true },
  warning = { fg = yellow1, bold = true },
  todo = { fg = blue3, bold = true },
  note = { fg = gray8, bold = true },
}) do
  hl["@comment." .. type] = color
  hl["@comment." .. type .. ".comment"] = color
end


--------------------------------------------------
-- LSP
--------------------------------------------------
-- Diagnostics
for type, color in pairs({
  Error = red3,
  Warn = yellow1,
  Info = blue3,
  Hint = gray8,
  Ok = green1
}) do
  hl["Diagnostic" .. type] = { fg = color }
  hl["DiagnosticSign" .. type] = utils.update(hl["Normal"], { fg = color })
  hl["DiagnosticVirtualText" .. type] = { fg = color }
  hl["DiagnosticUnderline" .. type] = { sp = utils.tint(color, -15), undercurl = true }
end

hl["DiagnosticUnnecessary"] = utils.update(hl["Comment"], { undercurl = true })


-- Handlers
hl["LspSignatureActiveParameter"] = { sp = gray8, underline = true }


-- Semantic Tokens
for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
  vim.api.nvim_set_hl(0, group, {})
end


--------------------------------------------------
-- Execute
--------------------------------------------------
for group, opts in pairs(hl) do
  vim.api.nvim_set_hl(0, group, opts)
end
