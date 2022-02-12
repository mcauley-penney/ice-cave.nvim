--[[
    Author: MP
    Notes:
        for highlight groups, see https://neovim.io/doc/user/syntax.html#highlight-groups
        background color: #212121

    TODO:
        • hi Lua nil, Python None
            • also highlights all pairs?
]]

local na = {}
local black_0 = "#000000"
local black_1 = "#141414"
local black_2 = "#212121"
local black_3 = "#2d2d2d"
local black_4 = "#424242"
local black_5 = "#666666"
local black_6 = "#c1c1c1"

local white_0 = "#DBD3C9"
local white_1 = "#FFFFFF"

local green_1 = "#5C8145"
local green_2 = "#B3C3A4"

local blue_0 = "#434649"
local blue_1 = "#444D5F"
local blue_2 = "#616E88"
local blue_3 = "#8296b0"
local blue_4 = "#8D98A7"

local red_0 = "#e26d5c"
local red_2 = "#FF0000"

local purple_0 = "#90708C"

local yellow_0 = "#FEAD4C"
local yellow_1 = "#FFC15E"

local cyan_0 = "#00CECB"

-- syntax metaarray
local hi = {}
local links = {}

-- ui
hi["ColorColumn"] = na
hi["Conceal"] = na
hi["CursorLine"] = { fg = yellow_1, bg = black_4, bold = true } -- vim-illuminate
hi["CursorLineNr"] = na
hi["Directory"] = { fg = blue_3 }
hi["EndOfBuffer"] = { fg = white_1 }
hi["ErrorMsg"] = { fg = red_2 }
hi["FoldColumn"] = na
hi["Folded"] = { fg = blue_0, italic = true }
hi["LineNr"] = { fg = blue_0 }
hi["MatchParen"] = { fg = red_2, bold = true }
hi["ModeMsg"] = { fg = green_1 } -- remove bolding on macro recording notification
hi["MoreMsg"] = { fg = purple_0 }
hi["MsgArea"] = na
hi["NonText"] = { fg = blue_0 }
hi["Normal"] = { fg = white_0 }
hi["NormalNC"] = { fg = black_6 }
hi["Pmenu"] = { bg = black_3 }
hi["PmenuSel"] = { bg = blue_2 }
hi["Question"] = { fg = green_2 }
hi["SignColumn"] = na
hi["SpecialComment"] = { fg = yellow_0, bold = true, italic = true } -- hi for TODO
hi["SpecialKey"] = { fg = cyan_0, bold = true }
hi["StatusLine"] = { bg = black_3 }
hi["StatusLineNC"] = { fg = black_2 }
hi["Title"] = { fg = blue_3, italic = true }
hi["VertSplit"] = na
hi["Visual"] = { fg = black_0, bg = blue_4 }
hi["WarningMsg"] = na
hi["Whitespace"] = { fg = blue_0 }
hi["Yank"] = { bg = blue_1 }

-- syntax
-- default
hi["__termbg"] = { bg = black_2 } -- invisible highlight for internal usage
hi["__termdarken"] = { bg = black_1 }
hi["Character"] = { fg = green_2 }
hi["Comment"] = { fg = black_5, italic = true }
hi["Constant"] = { fg = purple_0 }
hi["Error"] = { fg = red_2 }
hi["Exception"] = { fg = green_2 }
hi["Function"] = { fg = white_0, italic = true }
hi["Identifier"] = na
hi["Keyword"] = { fg = blue_3 }
hi["Label"] = na
hi["Number"] = { fg = red_0 }
hi["Operator"] = { fg = yellow_0 }
hi["OverLength"] = na
hi["PreProc"] = { fg = purple_0, bold = true }
hi["Repeat"] = { fg = yellow_0 }
hi["Special"] = na
hi["Statement"] = { fg = yellow_0 }
hi["Tag"] = na
hi["Type"] = { fg = blue_4 }
hi["Underlined"] = { underline = true }

-- Treesitter
hi["TSNamespace"] = { fg = purple_0 }
hi["TSStringEscape"] = { fg = green_1 }
hi["TSStringRegex"] = { fg = green_1 }
-- TSAnnotation = na,
-- TSAttribute = na,
-- TSConstBuiltin = na,
-- TSConstMacro = na,
-- TSConstant = na,
-- TSConstructor = na,
-- TSDanger = na,
-- TSEnvironment = na,
-- TSEnvironmentName = na,
-- TSField = na,
-- TSFuncBuiltin = na,
-- TSInclude = na,
-- TSLiteral = na,
-- TSMath = na,
-- TSMethod = na,
-- TSNone = na,
-- TSParameter = na,
-- TSParameterReference = na,
-- TSProperty = na,
-- TSPunctBracket = na,
-- TSPunctDelimiter = na,
-- TSPunctSpecial = na,
-- TSStringSpecial = na,
-- TSTitle = na,
-- TSWarning = na,
-- }}}

-- Languages
-- Markdown
hi["markdownblockquote"] = { fg = green_2 }
hi["markdownbold"] = { bold = true }
hi["markdownbolditalic"] = { bold = true, italic = true }
hi["markdowncodedelimiter"] = { fg = yellow_0 }
hi["markdownfootnote"] = { fg = red_2 }
hi["markdownfootnotedefinition"] = na
hi["markdownh1"] = { fg = yellow_0 }
hi["markdownh2"] = { fg = yellow_0 }
hi["markdownh3"] = { fg = yellow_0 }
hi["markdownh4"] = { fg = yellow_0 }
hi["markdownh5"] = { fg = yellow_0 }
hi["markdownh6"] = { fg = yellow_0 }
hi["markdownitalic"] = { italic = true }
hi["markdownlinebreak"] = { fg = green_1, italic = true }
hi["markdownlinktext"] = { fg = green_1, italic = true }
hi["markdownlistmarker"] = { fg = yellow_0 }
hi["markdownrule"] = na
-- hi["markdowncode"] = { fg = white_0, bg = black_1 }

-- plugins
-- symbols outline

-- vim-highlighturl
vim.g.highlighturl_guifg = blue_4

--[[
    Commonly linked groups:
        Boolean           -> Constant       ✅
        Character         -> Constant       ✅
        Conditional       -> Statement      ✅
        Debug             -> Special
        Define            -> PreProc        ✅
        Delimiter         -> Special        ✅
        Exception         -> Statement      ✅
        Float             -> Constant       ✅
        Function          -> Identifier
        Include           -> PreProc        ✅
        Keyword           -> Statement
        Label             -> Statement
        Macro             -> PreProc        ✅
        Number            -> Constant
        Operator          -> Statement
        PopupSelected     -> PmenuSel
        PreCondit         -> PreProc        ✅
        QuickFixLine      -> Search
        Repeat            -> Statement
        SpecialChar       -> Special        ✅
        SpecialComment    -> Special
        StatusLineTerm    -> StatusLine
        StatusLineTermNC  -> StatusLineNC
        StorageClass      -> Type           ✅
        String            -> Constant
        Structure         -> Type           ✅
        Tag               -> Special
        Typedef           -> Type           ✅
]]

links["String"] = { link = "Character" }
links["Boolean"] = { link = "Constant" }
links["Search"] = { link = "CursorLine" }
links["Substitute"] = { link = "CursorLine" }
links["Float"] = { link = "Number" }
links["Define"] = { link = "PreProc" }
links["Include"] = { link = "PreProc" }
links["Macro"] = { link = "PreProc" }
links["PreCondit"] = { link = "PreProc" }
links["Delimiter"] = { link = "Special" }
links["SpecialChar"] = { link = "Special" }
links["Todo"] = { link = "SpecialComment" }
links["TSNote"] = { link = "SpecialComment" }
links["Conditional"] = { link = "Statement" }
links["Exception"] = { link = "Statement" }
links["gitcommitSummary"] = { link = "Title" }
links["StorageClass"] = { link = "Type" }
links["Structure"] = { link = "Type" }
links["Typedef"] = { link = "Type" }

local function set_hi(hi_tbl)
    for group, hi_opts in pairs(hi_tbl) do
        vim.api.nvim_set_hl(0, group, hi_opts)
    end
end

-- call highlight
set_hi(hi)
set_hi(links)
