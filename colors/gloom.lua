--[[
    Author: MP
    Notes:
        hi groups: https://neovim.io/doc/user/syntax.html#highlight-groups
        bg, set in term cfg: #1d1d1d

    TODO:
      1. adjust type
      2. add hop.nvim scheme
      3. what can we learn from https://github.com/p00f/alabaster_dark.nvim
]]

local na = {}
local gray = {
  [0] = "#1A1A1A",
  [1] = "#1d1d1d",
  [2] = "#292929",
  [3] = "#363636",
  [4] = "#434343",
  [5] = "#DBD3C9",
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
  [2] = "Red",
}

local yellow = {
  [0] = "#FEAD4C",
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

-- Custom
hl["__termdarken"] = { bg = gray[0] }
hl["Success"] = { fg = green[0] }

-- UI
hl["Cursor"] = { fg = red[2] }
hl["ColorColumn"] = na
hl["Conceal"] = na
hl["CursorLine"] = { bg = gray[3], fg = yellow[0] }
hl["CursorLineNr"] = { fg = gray[5] }
hl["Directory"] = { fg = blue[2], italic = true }
hl["Error"] = { fg = red[2] }
hl["MatchParen"] = { fg = red[2], bold = true }
hl["ModeMsg"] = { fg = green[3] }
hl["MsgArea"] = na
hl["NonText"] = { fg = gray[3], italic = true }
hl["Normal"] = { fg = gray[5], bg = gray[1] }
hl["PmenuSel"] = { bg = blue[1] }
-- TODO:
-- hl["PmenuSbar"] = { link = "Comment" }
-- hl["PmenuThumb"] = { link = "Comment" }
hl["Question"] = { fg = green[3] }
hl["Search"] = { fg = red[2], bg = gray[3] }
hl["SpecialComment"] = { fg = yellow[0], bold = true }
hl["SpecialKey"] = { fg = yellow[0], bold = true }
hl["StatusLine"] = { bg = gray[0] }
hl["VertSplit"] = { fg = gray[2] }
hl["Visual"] = { bg = gray[2] }
hl["Yank"] = { fg = yellow[0], bg = gray[3] }

-- Syntax
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

-- LSP --
-- Diagnostics
for type, color in pairs({
  Error = red[2],
  Warn = yellow[0],
  Info = blue[2],
  Hint = gray[5]
}) do
  hl["Diagnostic" .. type] = { fg = color }
  hl["DiagnosticUnderline" .. type] = { sp = color, underline = true }
end

-- Handlers
hl["LspSignatureActiveParameter"] = { fg = red[2], italic = true }

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
hl["markdownlistmarker"] = { fg = yellow[0] }
-- hl["markdownrule"] = na

hl["parafirstword"] = { bold = true }

-- Plugins --
for _, type in ipairs({ "Text", "Read", "Write" }) do
  hl["IlluminatedWord" .. type] = { bg = gray[3], fg = yellow[0] }
end


-- simrat39/symbols-outline.nvim
hl["FocusedSymbol"] = na

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
link["QuickFixLine"] = { link = "Search" }
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


-- https://github.com/vim/vim/blob/2f0936cb9a2eb026acac03e6a8fd0b2a5d97508b/runtime/syntax/gitcommit.vim
-- TODO: clean up, this is a mess
link["gitcommitArrow"] = { link = "Statement" }
hl["gitcommitBlank"] = { fg = green[0] }
hl["gitcommitBranch"] = { fg = green[0] }
hl["gitcommitDiscarded"] = { fg = green[0] }
hl["gitcommitDiscardedFile"] = { fg = green[0] }
hl["gitcommitDiscardedType"] = { fg = red[1] }
hl["gitcommitHeader"] = { bg = gray[0], italic = true }
hl["gitcommitOnBranch"] = { bg = gray[0], italic = true }
hl["gitcommitType"] = { fg = red[0], italic = true }
hl["gitcommitUnmerged"] = { fg = green[0] }
-- hl["gitcommitDiscardedArrow"] = { fg = green[0] }
-- hl["gitcommitFile"] = { fg = green[0] }
-- hl["gitcommitNoBranch"] = { fg = green[0] }
-- hl["gitcommitNoChanges"] = { fg = green[0] }
-- hl["gitcommitOverflow"] = { fg = green[0] }
-- hl["gitcommitSelected"] = { fg = green[3] }
-- hl["gitcommitSelectedArrow"] = { fg = green[0] }
-- hl["gitcommitSelectedFile"] = { fg = green[0] }
-- hl["gitcommitSelectedType"] = { fg = green[0] }
-- hl["gitcommitUnmergedArrow"] = { fg = green[0] }
-- hl["gitcommitUnmergedFile"] = { fg = green[0] }
-- hl["gitcommitUnmergedType"] = { fg = green[0] }
-- hl["gitcommitUntracked"] = { fg = green[0] }
-- hl["gitcommitUntrackedFile"] = { fg = green[0] }
link["gitcommitSummary"] = { link = "Directory" }


-- https://github.com/vim/vim/blob/2d8ed0203aedd5f6c22efa99394a3677c17c7a7a/runtime/syntax/help.vim
link['helpCommand'] = { link = "Normal" }
link['helpExample'] = { link = "String" }
link['helpHyperTextEntry'] = { link = "Directory" }
link['helpOption'] = { link = "Normal" }
link['helpVim'] = { link = "Normal" }
-- syntax['helpHyperTextJump'] = {fg=colors.blue}
-- syntax['helpNote'] = {fg=colors.magenta}


-- https://github.com/vim/vim/blob/c54f347d63bcca97ead673d01ac6b59914bb04e5/runtime/syntax/diff.vim
link["diffOldFile"] = { link = "PreProc" }
link["diffNewFile"] = { bg = gray[0], underline = true }
link["diffIndexLine"] = { link = "PreProc" }
hl["diffFile"] = { bg = gray[0], italic = true }
link["diffNoEOL"] = { link = "DiagnosticError" }
hl["diffRemoved"] = { fg = red[1] }
hl["diffChanged"] = { fg = yellow[0] }
hl["diffAdded"] = { fg = green[3] }
hl["diffLine"] = { fg = blue[2], italic = true, underline = true }
link["diffSubname"] = { link = "Directory" }


-- Plugins --
link["BiscuitColor"] = { link = "NonText" }

-- j-hui/fidget.nvim
link["FidgetTask"] = { fg = gray[3] }
link["FidgetTitle"] = { link = "Statement" }

-- lukas-reineke/virt-column.nvim
link["VirtColumn"] = { link = "VertSplit" }

--------------------------------------------------
-- Execute
--------------------------------------------------
vim.g.colors_name = "still_light"

-- call highlight
set_hl(hl)
set_hl(link)
