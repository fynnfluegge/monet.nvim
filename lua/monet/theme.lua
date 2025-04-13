local C = require "monet.palette"
local O = require "monet.config"
local U = require "monet.utils"

local M = {}

function M.get()
	return {
		ColorColumn = { bg = C.darkgrey5 },
		Conceal = { fg = C.grey4 },
		Cursor = { fg = C.dark0, bg = C.grey0 },
		lCursor = { fg = C.dark0, bg = C.grey0 },
		CursorIM = { fg = C.dark0, bg = C.grey0 },
		CursorColumn = { bg = C.dark1 },
		CursorLine = {
			bg = U.darken(C.darkgrey4, 0.64, C.darkgrey5),
		},
		Directory = { fg = C.softblue },
		EndOfBuffer = { fg = O.show_end_of_buffer and C.darkgrey1 or C.dark0 },
		ErrorMsg = { fg = C.red, style = { "bold", "italic" } },
		VertSplit = { fg = O.transparent_background and C.darkgrey1 or C.darkgrey0 },
		Folded = { fg = C.softblue, bg = O.transparent_background and C.none or C.darkgrey1 },
		FoldColumn = { fg = C.grey5 },
		SignColumn = { fg = C.darkgrey1 },
		SignColumnSB = { bg = C.darkgrey0, fg = C.darkgrey1 },
		Substitute = { fg = C.dark1, bg = C.orange },
		LineNr = { fg = C.grey6 },
		CursorLineNr = { fg = C.turqoise },
		MatchParen = { fg = C.orange, bg = C.darkgrey1, style = { "bold" } },
		ModeMsg = { fg = C.grey0, style = { "bold" } },
		MsgSeparator = {},
		MoreMsg = { fg = C.softblue },
		NonText = { fg = C.grey5 },
		Normal = { fg = C.grey0, bg = O.transparent_background and C.none or C.dark0 },
		NormalNC = {
			fg = C.grey0,
			bg = (O.transparent_background and C.none) or C.dark0,
		},
		NormalSB = { fg = C.grey0, bg = C.darkgrey0 },
		NormalFloat = {
			fg = C.grey0,
			bg = (O.transparent_background and vim.o.winblend == 0) and C.none or C.dark0,
		},
		FloatBorder = { fg = C.softblue },
		FloatTitle = { fg = C.grey2 },
		Pmenu = {
			bg = (O.transparent_background and vim.o.pumblend == 0) and C.none
				or U.darken(C.darkgrey5, 0.8, C.darkgrey0),
			fg = C.grey3,
		},
		PmenuSel = { bg = C.darkgrey1, style = { "bold" } },
		PmenuSbar = { bg = C.darkgrey1 },
		PmenuThumb = { bg = C.grey5 },
		Question = { fg = C.softblue },
		QuickFixLine = { bg = C.darkgrey1, style = { "bold" } },
		Search = { bg = U.darken(C.grey6, 0.30, C.dark0), fg = C.neonyellow },
		IncSearch = { bg = C.neonyellow, fg = C.dark1 },
		CurSearch = { bg = C.red, fg = C.dark1 },
		SpecialKey = { link = "NonText" },
		SpellBad = { sp = C.red, style = { "undercurl" } },
		SpellCap = { sp = C.yellow, style = { "undercurl" } },
		SpellLocal = { sp = C.softblue, style = { "undercurl" } },
		SpellRare = { sp = C.mossgreen, style = { "undercurl" } },
		StatusLine = { fg = C.grey0, bg = O.transparent_background and C.none or C.dark1 },
		StatusLineNC = { fg = C.darkgrey1, bg = O.transparent_background and C.none or C.dark1 },
		TabLine = { bg = C.dark1, fg = C.darkgrey1 },
		TabLineFill = {},
		TabLineSel = { fg = C.mossgreen, bg = C.darkgrey1 },
		Title = { fg = C.softblue, style = { "bold" } },
		Visual = { bg = C.darkgrey1, style = { "bold" } },
		VisualNOS = { bg = C.darkgrey1, style = { "bold" } },
		WarningMsg = { fg = C.yellow },
		Whitespace = { fg = C.darkgrey1 },
		WildMenu = { bg = C.grey5 },
		WinBar = { fg = C.pastelpeach },
		WinBarNC = { link = "WinBar" },
		WinSeparator = { fg = O.transparent_background and C.darkgrey1 or C.darkgrey0 },

		Comment = { fg = C.grey5, bg = "NONE", italic = true },
		SpecialComment = { link = "Special" },
		Constant = { fg = C.orange },
		String = { fg = U.darken(C.mossgreen, 0.90, C.dark0), style = O.styles.strings or { "italic" } },
		Character = { fg = C.softturqoise },
		Number = { fg = C.orange, style = O.styles.numbers or {} },
		Float = { link = "Number" },
		Boolean = { fg = C.orange, style = O.styles.booleans or {} },
		Identifier = { fg = C.pastelturqoise, style = O.styles.variables or {} },
		Function = { fg = C.softblue, style = O.styles.functions or {} },
		Statement = { fg = C.cornflowerblue },
		Conditional = { fg = C.cornflowerblue, style = O.styles.conditionals or {} },
		Repeat = { fg = C.cornflowerblue, style = O.styles.loops or {} },
		Label = { fg = C.azureblue },
		Operator = { fg = C.lightcyan, style = O.styles.operators or {} },
		Keyword = { fg = C.cornflowerblue, style = O.styles.keywords or {} },
		Exception = { fg = C.cornflowerblue, style = O.styles.keywords or {} },

		PreProc = { fg = C.skyblue },
		Include = { fg = C.cornflowerblue, style = O.styles.keywords or {} },
		Define = { link = "PreProc" },
		Macro = { fg = C.cornflowerblue },
		PreCondit = { link = "PreProc" },

		StorageClass = { fg = C.yellow },
		Structure = { fg = C.yellow },
		Special = { fg = C.skyblue },
		Type = { fg = C.yellow, style = O.styles.types or {} },
		Typedef = { link = "Type" },
		SpecialChar = { link = "Special" },
		Tag = { fg = C.pastelturqoise, style = { "bold" } },
		Delimiter = { fg = C.grey3 },
		Debug = { link = "Special" },

		Underlined = { style = { "underline" } },
		Bold = { style = { "bold" } },
		Italic = { style = { "italic" } },

		Error = { fg = C.red },
		Todo = { bg = C.yellow, fg = C.dark0, style = { "bold" } },
		qfLineNr = { fg = C.yellow },
		qfFileName = { fg = C.softblue },
		htmlH1 = { fg = C.skyblue, style = { "bold" } },
		htmlH2 = { fg = C.softblue, style = { "bold" } },
		mkdCodeDelimiter = { bg = C.dark0, fg = C.grey0 },
		mkdCodeStart = { fg = C.pastelpink, style = { "bold" } },
		mkdCodeEnd = { fg = C.pastelpink, style = { "bold" } },

		-- debugging
		debugPC = { bg = O.transparent_background and C.none or C.darkgrey0 },
		debugBreakpoint = { bg = C.dark0, fg = C.grey5 },
		-- illuminate
		illuminatedWord = { bg = C.darkgrey1 },
		illuminatedCurWord = { bg = C.darkgrey1 },
		-- diff
		diffAdded = { fg = C.mossgreen },
		diffRemoved = { fg = C.red },
		diffChanged = { fg = C.softblue },
		diffOldFile = { fg = C.yellow },
		diffNewFile = { fg = C.orange },
		diffFile = { fg = C.softblue },
		diffLine = { fg = C.grey5 },
		diffIndexLine = { fg = C.softturqoise },
		DiffAdd = { bg = U.darken(C.mossgreen, 0.18, C.dark0) },
		DiffChange = { bg = U.darken(C.softblue, 0.07, C.dark0) },
		DiffDelete = { bg = U.darken(C.red, 0.18, C.dark0) },
		DiffText = { bg = U.darken(C.softblue, 0.30, C.dark0) },
		-- NeoVim
		healthError = { fg = C.red },
		healthSuccess = { fg = C.softturqoise },
		healthWarning = { fg = C.yellow },
		-- misc

		-- glyphs
		GlyphPalette1 = { fg = C.red },
		GlyphPalette2 = { fg = C.softturqoise },
		GlyphPalette3 = { fg = C.yellow },
		GlyphPalette4 = { fg = C.softblue },
		GlyphPalette6 = { fg = C.softturqoise },
		GlyphPalette7 = { fg = C.grey0 },
		GlyphPalette9 = { fg = C.red },

		-- rainbow
		rainbow1 = { fg = C.red },
		rainbow2 = { fg = C.orange },
		rainbow3 = { fg = C.yellow },
		rainbow4 = { fg = C.mossgreen },
		rainbow5 = { fg = C.azureblue },
		rainbow6 = { fg = C.pastelturqoise },
	}
end

function M.set_terminal_colors()
	vim.g.terminal_color_0 = C.grey5
	vim.g.terminal_color_8 = C.grey4

	vim.g.terminal_color_1 = C.red
	vim.g.terminal_color_9 = C.red

	vim.g.terminal_color_2 = C.springgreen
	vim.g.terminal_color_10 = C.springgreen

	vim.g.terminal_color_3 = C.yellow
	vim.g.terminal_color_11 = C.yellow

	vim.g.terminal_color_4 = C.softblue
	vim.g.terminal_color_12 = C.softblue

	vim.g.terminal_color_5 = C.skyblue
	vim.g.terminal_color_13 = C.skyblue

	vim.g.terminal_color_6 = C.lightcyan
	vim.g.terminal_color_14 = C.lightcyan

	vim.g.terminal_color_7 = C.grey0
	vim.g.terminal_color_15 = C.grey0
end

return M
