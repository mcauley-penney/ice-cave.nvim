--[[
    Author: MP
    Notes:
        hi groups: https://neovim.io/doc/user/syntax.html#highlight-groups
        bg, set in term cfg: #1d1d1d

    TODO:
      1. adjust type
      3. find a color for constants and keywords
        • too similar
]]


local na = {}
local gray = {
  [0] = "#000000",
  [1] = "#1d1d1d",
  [2] = "#292929",
  [3] = "#3e3e3e",
  [4] = "#4f4f4f",
  [5] = "#606060",
  [6] = "#DBD3C9",
}

local green = {
  [0] = "#4b8b51",
  [1] = "#5C8145",
  [2] = "#8CA576",
  [3] = "#B3C3A4",
}

local blue = {
  [1] = "#616E88",
  [2] = "#8296b0",
  [3] = "#9aabbc",
}

local red = {
  [0] = "#B48EAD",
  [1] = "#e26d5c",
  [2] = "#FF0000",
}

local yellow = {
  [0] = "#FEAD4C"
}


-- highlight dictionaries
local hl = {}
local link = {}

local function set_hl(hl_tbl)
  for group, opts in pairs(hl_tbl) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

--------------------------------------------------
-- Hightlights
--------------------------------------------------

-- user-defined
hl["__termbg"] = { bg = gray[1] }
hl["__success"] = { fg = green[0] }

-- UI
hl["Cursor"] = { bg = red[2] }
hl["ColorColumn"] = na
hl["Conceal"] = na
hl["CursorLine"] = { fg = yellow[0], bg = gray[3], bold = true }
hl["CursorLineNr"] = na
hl["Directory"] = { fg = blue[2], italic = true }
hl["Error"] = { fg = red[2] }
hl["MatchParen"] = { fg = red[2], bold = true }
hl["ModeMsg"] = { fg = green[0] }
hl["MsgArea"] = na
hl["NonText"] = { fg = gray[4], italic = true }
hl["Normal"] = { fg = gray[6], bg = gray[1] }
hl["PmenuSel"] = { bg = blue[1] }
hl["Question"] = { fg = green[0] }
hl["Search"] = na
hl["SpecialComment"] = { fg = gray[0], bg = yellow[0] }
hl["SpecialKey"] = { fg = yellow[0], bold = true }
hl["StatusLine"] = { bg = gray[2] }
hl["VertSplit"] = { fg = gray[2] }
hl["Visual"] = { bg = gray[3] }
hl["Yank"] = { fg = gray[0], bg = yellow[0] }



-- Syntax
hl["Character"] = { fg = green[2] }
hl["Comment"] = { fg = gray[5], italic = true }
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

-- LSP --
-- Diagnostics
for type, color in pairs({
  Error = "Red",
  Warn = "Orange",
  Hint = "LightGray",
  Info = "LightBlue",
}) do
  hl["DiagnosticUnderline" .. type] = { sp = color, underline = true }
end

-- Handlers
hl["LspSignatureActiveParameter"] = { fg = red[1], italic = true }

-- Treesitter
hl["TSNamespace"] = { fg = blue[1] }
hl["TSStringEscape"] = { fg = green[1] }
hl["TSStringRegex"] = { fg = green[1] }
--[[
    TSAnnotation = na,
    TSAttribute = na,
    TSConstBuiltin = na,
    TSConstMacro = na,
    TSConstant = na,
    TSConstructor = na,
    TSDanger = na,
    TSEnvironment = na,
    TSEnvironmentName = na,
    TSField = na,
    TSFuncBuiltin = na,
    TSInclude = na,
    TSLiteral = na,
    TSMath = na,
    TSMethod = na,
    TSNone = na,
    TSParameter = na,
    TSParameterReference = na,
    TSProperty = na,
    TSPunctBracket = na,
    TSPunctDelimiter = na,
    TSPunctSpecial = na,
    TSStringSpecial = na,
    TSTitle = na,
    TSWarning = na,
]]

-- Language-specific --
-- Markdown
-- hl["markdownHeadingDelimiter"] = { fg = yellow[0] }
-- hl["markdownCodeBlock"] = { fg = yellow[0] }
-- hl["markdownbold"] = { bold = true }
-- hl["markdownbolditalic"] = { bold = true, italic = true }
-- hl["markdownCodeDelimiter"] = { fg = yellow[0] }
-- hl["markdownfootnote"] = { fg = red[1] }
-- hl["markdownfootnotedefinition"] = na
-- hl["markdownitalic"] = { italic = true }
-- hl["markdownlinebreak"] = { fg = green[1], italic = true }
-- hl["markdownlinktext"] = { fg = green[1], italic = true }
-- hl["markdownlistmarker"] = { fg = yellow[0] }
-- hl["markdownrule"] = na



-- Plugins --
-- itchyny/vim-highlighturl
vim.g.highlighturl_guifg = blue[3]

--------------------------------------------------
-- Links
--------------------------------------------------
--[[
    Commonly linked groups:
        Boolean           -> Constant       
        Character         -> Constant       
        Conditional       -> Statement      
        Debug             -> Special
        Define            -> PreProc        
        Delimiter         -> Special        
        Exception         -> Statement      
        Float             -> Constant       
        Function          -> Identifier
        Include           -> PreProc        
        Keyword           -> Statement
        Label             -> Statement      
        Macro             -> PreProc        
        Number            -> Constant
        Operator          -> Statement
        PopupSelected     -> PmenuSel
        PreCondit         -> PreProc        
        QuickFixLine      -> Search
        Repeat            -> Statement      
        SpecialChar       -> Special        
        SpecialComment    -> Special
        StatusLineTerm    -> StatusLine
        StatusLineTermNC  -> StatusLineNC
        StorageClass      -> Type           
        String            -> Constant
        Structure         -> Type           
        Tag               -> Special
        Typedef           -> Type           
]]

-- UI --
link["Delimiter"] = { link = "Special" }
link["EndOfBuffer"] = { link = "NonText" }
link["ErrorMsg"] = { link = "Error" }
link["FloatBorder"] = { link = "StatusLine" }
link["Folded"] = { link = "NonText" }
link["FoldColumn"] = { link = "ColorColumn" }
link["Label"] = { link = "Keyword" }
link["LineNr"] = { link = "NonText" }
link["MoreMsg"] = { link = "ModeMsg" }
link["Pmenu"] = { link = "StatusLine" }
link["QuickFixLine"] = { link = "CursorLine" }
link["Search"] = { link = "CursorLine" }
link["SignColumn"] = { link = "StatusLineNC" }
link["SpecialChar"] = { link = "Special" }
link["StatusLineNC"] = { link = "__termbg" }
link["Substitute"] = { link = "CursorLine" }
link["TabLineFill"] = { link = "__termbg" }
link["Title"] = { link = "Directory" }
link["Todo"] = { link = "SpecialComment" }
link["TSNote"] = { link = "SpecialComment" }
link["WarningMsg"] = { link = "Error" }
link["Whitespace"] = { link = "NonText" }

-- Syntax --
link["Boolean"] = { link = "Constant" }
link["Conditional"] = { link = "Statement" }
link["Define"] = { link = "PreProc" }
link["Exception"] = { link = "Statement" }
link["Float"] = { link = "Number" }
link["Include"] = { link = "PreProc" }
link["Macro"] = { link = "PreProc" }
link["Operator"] = { link = "Statement" }
link["PreCondit"] = { link = "PreProc" }
link["Repeat"] = { link = "Statement" }
link["StorageClass"] = { link = "Type" }
link["Structure"] = { link = "Type" }
link["Typedef"] = { link = "Type" }
link["gitcommitSummary"] = { link = "Directory" }

-- Plugins --
-- simrat39/symbols-outline.nvim
link["FocusedSymbol"] = { link = "CursorLine" }
-- lukas-reineke/virt-column.nvim
link["VirtColumn"] = { link = "VertSplit" }

--------------------------------------------------
-- Execute
--------------------------------------------------
vim.g.colors_name = "still_light"

-- call highlight
set_hl(hl)
set_hl(link)
