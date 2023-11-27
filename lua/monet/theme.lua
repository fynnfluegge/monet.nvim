local C = require "monet.palette"
local O = require "monet.config"
local U = require "monet.utils"

local M = {}

function M.get()
	return {
		ColorColumn = { bg = C.surface0 },
		Conceal = { fg = C.overlay1 },
		Cursor = { fg = C.base, bg = C.text },
		lCursor = { fg = C.base, bg = C.text },
		CursorIM = { fg = C.base, bg = C.text },
		CursorColumn = { bg = C.mantle },
		CursorLine = {
			bg = U.darken("#3b3f54", 0.64, C.surface0),
		},
		Directory = { fg = C.blue },
		EndOfBuffer = { fg = O.show_end_of_buffer and C.surface1 or C.base },
		ErrorMsg = { fg = C.red, style = { "bold", "italic" } },
		VertSplit = { fg = O.transparent_background and C.surface1 or C.crust },
		Folded = { fg = C.blue, bg = O.transparent_background and C.none or C.surface1 },
		FoldColumn = { fg = C.overlay0 },
		SignColumn = { fg = C.surface1 },
		SignColumnSB = { bg = C.crust, fg = C.surface1 },
		Substitute = { fg = C.mantle, bg = C.peach },
		LineNr = { fg = C.surface1 },
		CursorLineNr = { fg = C.lavender },
		MatchParen = { fg = C.peach, bg = C.surface1, style = { "bold" } },
		ModeMsg = { fg = C.text, style = { "bold" } },
		MsgSeparator = {},
		MoreMsg = { fg = C.blue },
		NonText = { fg = C.overlay0 },
		Normal = { fg = C.text, bg = O.transparent_background and C.none or C.base },
		NormalNC = {
			fg = C.text,
			bg = (O.transparent_background and C.none) or C.base,
		},
		NormalSB = { fg = C.text, bg = C.crust },
		NormalFloat = { fg = C.text, bg = (O.transparent_background and vim.o.winblend == 0) and C.none or C.mantle },
		FloatBorder = { fg = C.blue },
		FloatTitle = { fg = C.subtext0 },
		Pmenu = {
			bg = (O.transparent_background and vim.o.pumblend == 0) and C.none or U.darken(C.surface0, 0.8, C.crust),
			fg = C.overlay2,
		},
		PmenuSel = { bg = C.surface1, style = { "bold" } },
		PmenuSbar = { bg = C.surface1 },
		PmenuThumb = { bg = C.overlay0 },
		Question = { fg = C.blue },
		QuickFixLine = { bg = C.surface1, style = { "bold" } },
		Search = { bg = U.darken(C.sky, 0.30, C.base), fg = C.text },
		IncSearch = { bg = U.darken(C.sky, 0.90, C.base), fg = C.mantle },
		CurSearch = { bg = C.red, fg = C.mantle },
		SpecialKey = { link = "NonText" },
		SpellBad = { sp = C.red, style = { "undercurl" } },
		SpellCap = { sp = C.yellow, style = { "undercurl" } },
		SpellLocal = { sp = C.blue, style = { "undercurl" } },
		SpellRare = { sp = C.green, style = { "undercurl" } },
		StatusLine = { fg = C.text, bg = O.transparent_background and C.none or C.mantle },
		StatusLineNC = { fg = C.surface1, bg = O.transparent_background and C.none or C.mantle },
		TabLine = { bg = C.mantle, fg = C.surface1 },
		TabLineFill = {},
		TabLineSel = { fg = C.green, bg = C.surface1 },
		Title = { fg = C.blue, style = { "bold" } },
		Visual = { bg = C.surface1, style = { "bold" } },
		VisualNOS = { bg = C.surface1, style = { "bold" } },
		WarningMsg = { fg = C.yellow },
		Whitespace = { fg = C.surface1 },
		WildMenu = { bg = C.overlay0 },
		WinBar = { fg = C.rosewater },

		Comment = { fg = C.overlay0, bg = "NONE", italic = true },
		SpecialComment = { link = "Special" },
		Constant = { fg = C.peach },
		String = { fg = C.springgreen, style = O.styles.strings or {} },
		Character = { fg = C.teal },
		Number = { fg = C.peach, style = O.styles.numbers or {} },
		Float = { link = "Number" },
		Boolean = { fg = C.peach, style = O.styles.booleans or {} },
		Identifier = { fg = C.lavender, style = O.styles.variables or {} },
		Function = { fg = C.blue, style = O.styles.functions or {} },
		Statement = { fg = C.mauve },
		Conditional = { fg = C.mauve, style = O.styles.conditionals or {} },
		Repeat = { fg = C.mauve, style = O.styles.loops or {} },
		Label = { fg = C.sapphire },
		Operator = { fg = C.sky, style = O.styles.operators or {} },
		Keyword = { fg = C.mauve, style = O.styles.keywords or {} },
		Exception = { fg = C.mauve, style = O.styles.keywords or {} },

		PreProc = { fg = C.pink },
		Include = { fg = C.mauve, style = O.styles.keywords or {} },
		Define = { link = "PreProc" },
		Macro = { fg = C.mauve },
		PreCondit = { link = "PreProc" },

		StorageClass = { fg = C.yellow },
		Structure = { fg = C.yellow },
		Special = { fg = C.pink },
		Type = { fg = C.yellow, style = O.styles.types or {} },
		Typedef = { link = "Type" },
		SpecialChar = { link = "Special" },
		Tag = { fg = C.lavender, style = { "bold" } },
		Delimiter = { fg = C.overlay2 },
		Debug = { link = "Special" },

		Underlined = { style = { "underline" } },
		Bold = { style = { "bold" } },
		Italic = { style = { "italic" } },

		Error = { fg = C.red },
		Todo = { bg = C.yellow, fg = C.base, style = { "bold" } },
		qfLineNr = { fg = C.yellow },
		qfFileName = { fg = C.blue },
		htmlH1 = { fg = C.pink, style = { "bold" } },
		htmlH2 = { fg = C.blue, style = { "bold" } },
		mkdCodeDelimiter = { bg = C.base, fg = C.text },
		mkdCodeStart = { fg = C.flamingo, style = { "bold" } },
		mkdCodeEnd = { fg = C.flamingo, style = { "bold" } },

		-- debugging
		debugPC = { bg = O.transparent_background and C.none or C.crust },
		debugBreakpoint = { bg = C.base, fg = C.overlay0 },
		-- illuminate
		illuminatedWord = { bg = C.surface1 },
		illuminatedCurWord = { bg = C.surface1 },
		-- diff
		diffAdded = { fg = C.green },
		diffRemoved = { fg = C.red },
		diffChanged = { fg = C.blue },
		diffOldFile = { fg = C.yellow },
		diffNewFile = { fg = C.peach },
		diffFile = { fg = C.blue },
		diffLine = { fg = C.overlay0 },
		diffIndexLine = { fg = C.teal },
		DiffAdd = { bg = U.darken(C.green, 0.18, C.base) },
		DiffChange = { bg = U.darken(C.blue, 0.07, C.base) },
		DiffDelete = { bg = U.darken(C.red, 0.18, C.base) },
		DiffText = { bg = U.darken(C.blue, 0.30, C.base) },
		-- NeoVim
		healthError = { fg = C.red },
		healthSuccess = { fg = C.teal },
		healthWarning = { fg = C.yellow },
		-- misc

		-- glyphs
		GlyphPalette1 = { fg = C.red },
		GlyphPalette2 = { fg = C.teal },
		GlyphPalette3 = { fg = C.yellow },
		GlyphPalette4 = { fg = C.blue },
		GlyphPalette6 = { fg = C.teal },
		GlyphPalette7 = { fg = C.text },
		GlyphPalette9 = { fg = C.red },

		-- rainbow
		rainbow1 = { fg = C.red },
		rainbow2 = { fg = C.peach },
		rainbow3 = { fg = C.yellow },
		rainbow4 = { fg = C.green },
		rainbow5 = { fg = C.sapphire },
		rainbow6 = { fg = C.lavender },
	}
end

function M.set_terminal_colors()
	vim.g.terminal_color_0 = C.overlay0
	vim.g.terminal_color_8 = C.overlay1

	vim.g.terminal_color_1 = C.red
	vim.g.terminal_color_9 = C.red

	vim.g.terminal_color_2 = C.green
	vim.g.terminal_color_10 = C.green

	vim.g.terminal_color_3 = C.yellow
	vim.g.terminal_color_11 = C.yellow

	vim.g.terminal_color_4 = C.blue
	vim.g.terminal_color_12 = C.blue

	vim.g.terminal_color_5 = C.pink
	vim.g.terminal_color_13 = C.pink

	vim.g.terminal_color_6 = C.sky
	vim.g.terminal_color_14 = C.sky

	vim.g.terminal_color_7 = C.text
	vim.g.terminal_color_15 = C.text
end

return M
