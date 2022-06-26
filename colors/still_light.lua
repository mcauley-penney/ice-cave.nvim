--[[
    Author: MP
    Notes:
        hi groups: https://neovim.io/doc/user/syntax.html#highlight-groups
        bg, set in term cfg: #212121
]]

local na = {}
local black = {
    [0] = "#000000",
    [1] = "#141414",
    [2] = "#212121",
    [3] = "#2d2d2d",
    [4] = "#424242",
    [5] = "#4f4f4f",
    [6] = "#666666",
    [7] = "#c1c1c1",
}

local white = {
    [0] = "#DBD3C9",
}

local green = {
    [0] = "#4b8b51",
    [1] = "#5C8145",
    [2] = "#8CA576",
    [3] = "#B3C3A4",
}

local blue = {
    [0] = "#434649",
    [1] = "#616E88",
    [2] = "#8296b0",
    [3] = "#8D98A7",
}

local red = {
    [0] = "#e26d5c",
    [1] = "#FF0000",
}

local yellow = {
    [0] = "#FEAD4C",
    [1] = "#FFC15E",
}

local purple_0 = "#90708C"
local cyan_0 = "#00CECB"

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
-- UI
hl["ColorColumn"] = na
hl["Conceal"] = na
hl["Cursor"] = { bg = yellow[1] }
hl["CursorLine"] = { fg = yellow[1], bg = black[4], bold = true }
hl["CursorLineNr"] = na
hl["Directory"] = { fg = blue[2] }
hl["Folded"] = { fg = blue[0], italic = true }
hl["MatchParen"] = { fg = red[1], bold = true }
hl["ModeMsg"] = { fg = green[1] }
hl["MoreMsg"] = { fg = purple_0 }
hl["MsgArea"] = na
hl["NonText"] = { fg = blue[0] }
hl["Normal"] = { fg = white[0], bg = black[2] }
hl["NormalNC"] = { fg = black[7] }
hl["Pmenu"] = { bg = black[3] }
hl["PmenuSel"] = { bg = blue[1] }
hl["Question"] = { fg = green[3] }
hl["SpecialComment"] = { fg = black[0], bg = yellow[0] }
hl["SpecialKey"] = { fg = cyan_0, bold = true }
hl["StatusLine"] = { bg = black[3] }
hl["Title"] = { fg = blue[2], italic = true }
hl["VertSplit"] = { fg = black[3], bold = true }
hl["Visual"] = { fg = white[0], bg = black[5] }
hl["WarningMsg"] = na
hl["Yank"] = { fg = black[0], bg = yellow[0] }

-- Syntax
hl["Character"] = { fg = green[2] }
hl["Comment"] = { fg = black[6], italic = true }
hl["Constant"] = { fg = purple_0 }
hl["Exception"] = { fg = green[3] }
hl["Function"] = { fg = white[0], italic = true }
hl["Identifier"] = na
hl["Keyword"] = { fg = blue[2] }
hl["Label"] = na
hl["Number"] = { fg = red[0] }
hl["PreProc"] = { bg = black[0] }
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

-- TODO: adjust
-- Handlers
hl["LspSignatureActiveParameter"] = { bg = red[0] }

-- Treesitter
hl["TSNamespace"] = { fg = purple_0 }
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
hl["markdownHeadingDelimiter"] = { fg = yellow[0] }
hl["markdownCodeBlock"] = { fg = yellow[0] }
hl["markdownbold"] = { bold = true }
hl["markdownbolditalic"] = { bold = true, italic = true }
hl["markdownCodeDelimiter"] = { fg = yellow[0] }
hl["markdownfootnote"] = { fg = red[1] }
hl["markdownfootnotedefinition"] = na
hl["markdownitalic"] = { italic = true }
hl["markdownlinebreak"] = { fg = green[1], italic = true }
hl["markdownlinktext"] = { fg = green[1], italic = true }
hl["markdownlistmarker"] = { fg = yellow[0] }
hl["markdownrule"] = na
-- hl["markdownCode"] = { bg = black[1] }

-- user-defined
hl["__termbg"] = { bg = black[2] }
hl["__termdarken"] = { bg = black[1] }
hl["__success"] = { fg = green[0] }

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
        Label             -> Statement
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
link["Error"] = { link = "DiagnosticError" }
link["ErrorMsg"] = { link = "DiagnosticError" }
link["FoldColumn"] = { link = "ColorColumn" }
link["LineNr"] = { link = "NonText" }
link["Search"] = { link = "CursorLine" }
link["SignColumn"] = { link = "ColorColumn" }
link["SpecialChar"] = { link = "Special" }
link["StatusLineNC"] = { link = "__termbg" }
link["Substitute"] = { link = "CursorLine" }
link["TSNote"] = { link = "SpecialComment" }
link["TabLineFill"] = { link = "__termbg" }
link["Todo"] = { link = "SpecialComment" }
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
link["gitcommitSummary"] = { link = "Title" }

-- Plugins --
-- simrat39/symbols-outline.nvim
link["FocusedSymbol"] = { link = "CursorLine" }

--------------------------------------------------
-- Execute
--------------------------------------------------
vim.g.colors_name = "still_light"

-- call highlight
set_hl(hl)
set_hl(link)
