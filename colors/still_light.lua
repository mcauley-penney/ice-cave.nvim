--[[
        Name  : Cacophony
        Author: MP
        Notes:
            for highlight groups, see https://neovim.io/doc/user/syntax.html#highlight-groups
            background color: #212121
]]

local na = {}
local black_0 = "#000000"
local black_1 = "#15181C"
local black_2 = "#212121"
local black_3 = "#2d2d2d"
local black_4 = "#666666"
local black_5 = "#c1c1c1"

local white_0 = "#DBD3C9"
local white_1 = "#FFFFFF"

local green_0 = "#5C8145"
local green_1 = "#B3C3A4"

local blue_0 = "#434649"
local blue_1 = "#444D5F"
local blue_2 = "#4C566A"
local blue_3 = "#616E88"
local blue_4 = "#8296b0"
local blue_5 = "#8D98A7"

local red_0 = "#e26d5c"
local red_2 = "#FF0000"

local purple_0 = "#4F5F98"
local purple_1 = "#90708C"

local yellow_0 = "#FEAD4C"
local yellow_1 = "#FFC15E"

local cyan_0 = "#00CECB"

-- styles
local bold = "bold"
local ital = "italic"
local ul = "underline"

-- syntax metaarray
local hi = {}
local links = {}

-- ui
hi["ColorColumn"] = na
hi["Conceal"] = na
hi["CursorLine"] = { fg = black_0, bg = yellow_1, gui = bold } -- vim-illuminate
hi["CursorLineNr"] = na
hi["Directory"] = { fg = purple_1 }
hi["EndOfBuffer"] = { fg = white_1 }
hi["ErrorMsg"] = { fg = red_2 }
hi["FoldColumn"] = na
hi["Folded"] = { fg = blue_5, gui = ital }
hi["LineNr"] = { fg = blue_0 }
hi["MatchParen"] = { fg = red_2, gui = bold }
hi["ModeMsg"] = { fg = green_0 } -- remove bolding on macro recording notification
hi["MoreMsg"] = { fg = purple_1 }
hi["MsgArea"] = na
hi["NonText"] = { fg = blue_0 }
hi["Normal"] = { fg = white_0 }
hi["NormalNC"] = { fg = black_5 }
hi["Pmenu"] = { bg = blue_0 }
hi["PmenuSel"] = { bg = blue_3 }
hi["Question"] = { fg = green_1 }
hi["Search"] = { fg = white_1, bg = green_1 }
hi["SignColumn"] = na
hi["SpecialComment"] = { fg = yellow_1, gui = "bold,italic" } -- FIXME: and XXX: , etc.
hi["SpecialKey"] = { fg = cyan_0, gui = bold }
hi["StatusLine"] = { bg = black_3 }
hi["StatusLineNC"] = { fg = black_2, bg = black_2 }
hi["Substitute"] = { fg = white_1, bg = green_1 }
hi["Title"] = na
hi["VertSplit"] = na
hi["Visual"] = { fg = black_0, bg = blue_5 }
hi["WarningMsg"] = na
hi["Whitespace"] = { fg = blue_0 }
hi["Yank"] = { bg = blue_1 }

-- syntax
-- default
hi["__termbg"] = { bg = black_2 } -- invisible highlight for internal usage
hi["Character"] = { fg = green_1 }
hi["Comment"] = { fg = black_4, gui = ital }
hi["Constant"] = { fg = purple_1 }
hi["Error"] = { fg = red_2 }
hi["Exception"] = { fg = green_1 }
hi["Function"] = { fg = white_0, gui = "italic" }
hi["Identifier"] = na
hi["Keyword"] = { fg = blue_4 }
hi["Label"] = na
hi["Number"] = { fg = red_0 }
hi["Operator"] = { fg = yellow_0 }
hi["OverLength"] = na
hi["PreProc"] = na
hi["Repeat"] = { fg = yellow_0 }
hi["Special"] = na
hi["Statement"] = { fg = yellow_0 }
hi["Tag"] = na
hi["Type"] = { fg = blue_5 }
hi["Underlined"] = { gui = ul }

-- Treesitter
hi["TSNamespace"] = { fg = purple_1 }
hi["TSStringEscape"] = { fg = green_0 }
hi["TSStringRegex"] = { fg = green_0 }
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
-- TSNote = na,
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
hi["markdownblockquote"] = { fg = green_1 }
hi["markdownbold"] = { gui = bold }
hi["markdownbolditalic"] = { gui = ul }
hi["markdowncode"] = { fg = white_0, bg = black_1 }
hi["markdowncodedelimiter"] = { fg = yellow_0 }
hi["markdownfootnote"] = { fg = red_2 }
hi["markdownfootnotedefinition"] = na
hi["markdownh1"] = { fg = yellow_0 }
hi["markdownh2"] = { fg = yellow_0 }
hi["markdownh3"] = { fg = yellow_0 }
hi["markdownh4"] = { fg = yellow_0 }
hi["markdownh5"] = { fg = yellow_0 }
hi["markdownh6"] = { fg = yellow_0 }
hi["markdownitalic"] = { gui = ital }
hi["markdownlinebreak"] = { fg = green_0, gui = ital }
hi["markdownlinktext"] = { fg = green_0, gui = ital }
hi["markdownlistmarker"] = { fg = yellow_0 }
hi["markdownrule"] = na

-- plugins
-- symbols outline
hi["FocusedSymbol"] = { gui = ul }

-- vim-highlighturl
vim.g.highlighturl_guifg = blue_5

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

links["String"] = "Character"
links["Boolean"] = "Constant"
links["Float"] = "Number"
links["Define"] = "PreProc"
links["Include"] = "PreProc"
links["Macro"] = "PreProc"
links["PreCondit"] = "PreProc"
links["Delimiter"] = "Special"
links["SpecialChar"] = "Special"
links["Todo"] = "SpecialComment"
links["Conditional"] = "Statement"
links["Exception"] = "Statement"
links["StorageClass"] = "Type"
links["Structure"] = "Type"
links["Typedef"] = "Type"

local function create_highlights(hi_tbl)
    for group, hl in pairs(hi_tbl) do
        local fg = hl.fg or "none"
        local bg = hl.bg or "none"
        local gui = hl.gui or "none"

        vim.cmd(string.format("hi %s gui=%s guibg=%s guifg=%s", group, gui, bg, fg))
    end
end

local function create_links(link_tbl)
    for link_from, link_to in pairs(link_tbl) do
        vim.cmd(string.format("hi! link %s %s", link_from, link_to))
    end
end

-- call highlight
create_highlights(hi)
create_links(links)
