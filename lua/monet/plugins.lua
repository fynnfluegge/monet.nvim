local C = require "monet.palette"
local O = require "monet.config"

local M = {}

function M.get()
	local active_bg = O.transparent_background and C.none or C.dark1
	local inactive_bg = O.transparent_background and C.none or C.dark0
	return {

		-- Aerial
		AerialLine = { fg = C.yellow, bg = C.none },
		AerialGuide = { fg = C.grey3 },
		AerialBooleanIcon = { link = "@boolean" },
		AerialClassIcon = { link = "@type" },
		AerialConstantIcon = { link = "@constant" },
		AerialConstructorIcon = { link = "@constructor" },
		AerialFieldIcon = { link = "@field" },
		AerialFunctionIcon = { link = "@function" },
		AerialMethodIcon = { link = "@method" },
		AerialNamespaceIcon = { link = "@namespace" },
		AerialNumberIcon = { link = "@number" },
		AerialOperatorIcon = { link = "@operator" },
		AerialTypeParameterIcon = { link = "@type" },
		AerialPropertyIcon = { link = "@property" },
		AerialStringIcon = { link = "@string" },
		AerialVariableIcon = { link = "@constant" },
		AerialEnumMemberIcon = { link = "@field" },
		AerialEnumIcon = { link = "@type" },
		AerialFileIcon = { link = "@text.uri" },
		AerialModuleIcon = { link = "@namespace" },
		AerialPackageIcon = { link = "@namespace" },
		AerialInterfaceIcon = { link = "@type" },
		AerialStructIcon = { link = "@type" },
		AerialEventIcon = { link = "@type" },
		AerialArrayIcon = { link = "@constant" },
		AerialObjectIcon = { link = "@type" },
		AerialKeyIcon = { link = "@type" },
		AerialNullIcon = { link = "@type" },

		-- Alpha
		AlphaShortcut = { fg = C.pastelgreen },
		AlphaHeader = { fg = C.softblue },
		AlphaHeaderLabel = { fg = C.orange },
		AlphaButtons = { fg = C.pastelturqoise },
		AlphaFooter = { fg = C.yellow, style = { "italic" } },

		-- Barbar
		BufferCurrent = { bg = C.darkgrey1, fg = C.grey0 },
		BufferCurrentIndex = { bg = C.darkgrey1, fg = C.softblue },
		BufferCurrentMod = { bg = C.darkgrey1, fg = C.yellow },
		BufferCurrentSign = { bg = C.darkgrey1, fg = C.softblue },
		BufferCurrentTarget = { bg = C.darkgrey1, fg = C.red },
		BufferVisible = { bg = C.dark1, fg = C.grey0 },
		BufferVisibleIndex = { bg = C.dark1, fg = C.softblue },
		BufferVisibleMod = { bg = C.dark1, fg = C.yellow },
		BufferVisibleSign = { bg = C.dark1, fg = C.softblue },
		BufferVisibleTarget = { bg = C.dark1, fg = C.red },
		BufferInactive = { bg = C.dark1, fg = C.grey5 },
		BufferInactiveIndex = { bg = C.dark1, fg = C.grey5 },
		BufferInactiveMod = { bg = C.dark1, fg = C.yellow },
		BufferInactiveSign = { bg = C.dark1, fg = C.softblue },
		BufferInactiveTarget = { bg = C.dark1, fg = C.red },
		BufferTabpages = { bg = C.dark1, fg = C.none },
		BufferTabpage = { bg = C.dark1, fg = C.softblue },

		-- Cmp
		CmpItemAbbr = { fg = C.grey3 },
		CmpItemAbbrDeprecated = { fg = C.grey5, style = { "strikethrough" } },
		CmpItemKind = { fg = C.softblue },
		CmpItemMenu = { fg = C.grey0 },
		CmpItemAbbrMatch = { fg = C.grey0, style = { "bold" } },
		CmpItemAbbrMatchFuzzy = { fg = C.grey0, style = { "bold" } },

		CmpItemKindSnippet = { fg = C.cornflowerblue },
		CmpItemKindKeyword = { fg = C.red },
		CmpItemKindText = { fg = C.softaqua },
		CmpItemKindMethod = { fg = C.softblue },
		CmpItemKindConstructor = { fg = C.softblue },
		CmpItemKindFunction = { fg = C.softblue },
		CmpItemKindFolder = { fg = C.softblue },
		CmpItemKindModule = { fg = C.softblue },
		CmpItemKindConstant = { fg = C.orange },
		CmpItemKindField = { fg = C.mossgreen },
		CmpItemKindProperty = { fg = C.mossgreen },
		CmpItemKindEnum = { fg = C.mossgreen },
		CmpItemKindUnit = { fg = C.mossgreen },
		CmpItemKindClass = { fg = C.yellow },
		CmpItemKindVariable = { fg = C.pastelpink },
		CmpItemKindFile = { fg = C.softblue },
		CmpItemKindInterface = { fg = C.yellow },
		CmpItemKindColor = { fg = C.red },
		CmpItemKindReference = { fg = C.red },
		CmpItemKindEnumMember = { fg = C.red },
		CmpItemKindStruct = { fg = C.softblue },
		CmpItemKindValue = { fg = C.orange },
		CmpItemKindEvent = { fg = C.softblue },
		CmpItemKindOperator = { fg = C.softblue },
		CmpItemKindTypeParameter = { fg = C.softblue },
		CmpItemKindCopilot = { fg = C.softaqua },

		-- Dashboard
		DashboardShortCut = { fg = C.skyblue },
		DashboardHeader = { fg = C.softblue },
		DashboardCenter = { fg = C.pastelgreen },
		DashboardFooter = { fg = C.yellow, style = { "italic" } },
		DashboardMruTitle = { fg = C.lightcyan },
		DashboardProjectTitle = { fg = C.lightcyan },
		DashboardFiles = { fg = C.pastelturqoise },
		DashboardKey = { fg = C.orange },
		DashboardDesc = { fg = C.softblue },
		DashboardIcon = { fg = C.skyblue, bold = true },

		-- Flash
		FlashBackdrop = { fg = C.grey5 },
		FlashLabel = { fg = C.springgreen, bg = active_bg, style = { "bold" } },
		FlashMatch = { fg = C.pastelturqoise, bg = active_bg },
		FlashCurrent = { fg = C.orange, bg = active_bg },
		FlashPrompt = { link = "NormalFloat" },

		-- Mason
		MasonHeader = {
			fg = O.transparent_background and C.pastelturqoise or C.dark0,
			bg = O.transparent_background and C.none or C.pastelturqoise,
			style = { "bold" },
		},
		MasonHeaderSecondary = {
			fg = O.transparent_background and C.softblue or C.dark0,
			bg = O.transparent_background and C.none or C.softblue,
			style = { "bold" },
		},

		MasonHighlight = { fg = C.mossgreen },
		MasonHighlightBlock = {
			bg = O.transparent_background and C.none or C.mossgreen,
			fg = O.transparent_background and C.mossgreen or C.dark0,
		},
		MasonHighlightBlockBold = {
			fg = O.transparent_background and C.softblue or C.dark0,
			bg = O.transparent_background and C.none or C.softblue,
			bold = true,
		},

		MasonHighlightSecondary = { fg = C.cornflowerblue },
		MasonHighlightBlockSecondary = {
			fg = O.transparent_background and C.softblue or C.dark0,
			bg = O.transparent_background and C.none or C.softblue,
		},
		MasonHighlightBlockBoldSecondary = {
			fg = O.transparent_background and C.pastelturqoise or C.dark0,
			bg = O.transparent_background and C.none or C.pastelturqoise,
			bold = true,
		},

		MasonMuted = { fg = C.grey5 },
		MasonMutedBlock = {
			bg = O.transparent_background and C.none or C.grey5,
			fg = O.transparent_background and C.grey5 or C.dark0,
		},
		MasonMutedBlockBold = { bg = C.yellow, fg = C.dark0, bold = true },

		MasonError = { fg = C.red },

		MasonHeading = { fg = C.pastelturqoise, bold = true },

		-- Mini
		MiniCompletionActiveParameter = { style = { "underline" } },

		MiniCursorword = { style = { "underline" } },
		MiniCursorwordCurrent = { style = { "underline" } },

		MiniIndentscopeSymbol = { fg = C.grey0 },
		MiniIndentscopePrefix = { style = { "nocombine" } }, -- Make it invisible

		MiniJump = { fg = C.grey3, bg = C.skyblue },

		MiniJump2dSpot = { bg = C.dark0, fg = C.orange, style = { "bold", "underline" } },

		MiniStarterCurrent = {},
		MiniStarterFooter = { fg = C.yellow, style = { "italic" } },
		MiniStarterHeader = { fg = C.softblue },
		MiniStarterInactive = { fg = C.darkgrey0, style = O.styles.comments },
		MiniStarterItem = { fg = C.grey0 },
		MiniStarterItemBullet = { fg = C.softblue },
		MiniStarterItemPrefix = { fg = C.skyblue },
		MiniStarterSection = { fg = C.pastelpink },
		MiniStarterQuery = { fg = C.mossgreen },

		MiniStatuslineDevinfo = { fg = C.grey1, bg = C.darkgrey1 },
		MiniStatuslineFileinfo = { fg = C.grey1, bg = C.darkgrey1 },
		MiniStatuslineFilename = { fg = C.grey0, bg = C.mantle },
		MiniStatuslineInactive = { fg = C.softblue, bg = C.mantle },
		MiniStatuslineModeCommand = { fg = C.dark0, bg = C.orange, style = { "bold" } },
		MiniStatuslineModeInsert = { fg = C.dark0, bg = C.mossgreen, style = { "bold" } },
		MiniStatuslineModeNormal = { fg = C.mantle, bg = C.softblue, style = { "bold" } },
		MiniStatuslineModeOther = { fg = C.dark0, bg = C.softaqua, style = { "bold" } },
		MiniStatuslineModeReplace = { fg = C.dark0, bg = C.red, style = { "bold" } },
		MiniStatuslineModeVisual = { fg = C.dark0, bg = C.cornflowerblue, style = { "bold" } },

		MiniSurround = { bg = C.skyblue, fg = C.darkgrey1 },

		MiniTablineCurrent = { fg = C.grey0, bg = C.dark0, sp = C.red, style = { "bold", "italic", "underline" } },
		MiniTablineFill = { bg = active_bg },
		MiniTablineHidden = { fg = C.grey0, bg = inactive_bg },
		MiniTablineModifiedCurrent = { fg = C.red, bg = C.none, style = { "bold", "italic" } },
		MiniTablineModifiedHidden = { fg = C.red, bg = C.none },
		MiniTablineModifiedVisible = { fg = C.red, bg = C.none },
		MiniTablineTabpagesection = { fg = C.darkgrey1, bg = C.dark0 },
		MiniTablineVisible = { bg = C.none },

		MiniTestEmphasis = { style = { "bold" } },
		MiniTestFail = { fg = C.red, style = { "bold" } },
		MiniTestPass = { fg = C.mossgreen, style = { "bold" } },

		MiniTrailspace = { bg = C.red },

		-- Neo-tree
		NeoTreeDirectoryName = { fg = C.softblue },
		NeoTreeDirectoryIcon = { fg = C.softblue },
		NeoTreeNormal = { fg = C.grey0, bg = active_bg },
		NeoTreeNormalNC = { fg = C.grey0, bg = active_bg },
		NeoTreeExpander = { fg = C.grey5 },
		NeoTreeIndentMarker = { fg = C.grey5 },
		NeoTreeRootName = { fg = C.softblue, style = { "bold" } },
		NeoTreeSymbolicLinkTarget = { fg = C.skyblue },

		NeoTreeGitAdded = { fg = C.pastelgreen },
		NeoTreeGitConflict = { fg = C.red },
		NeoTreeGitDeleted = { fg = C.red },
		NeoTreeGitIgnored = { fg = C.grey5 },
		NeoTreeGitModified = { fg = C.yellow },
		NeoTreeGitUnstaged = { fg = C.red },
		NeoTreeGitUntracked = { fg = C.skyblue },
		NeoTreeGitStaged = { fg = C.mossgreen },

		NeoTreeFloatBorder = { link = "FloatBorder" },
		NeoTreeFloatTitle = { link = "FloatTitle" },

		NeoTreeFileNameOpened = { fg = C.skyblue },
		NeoTreeDimText = { fg = C.grey4 },
		NeoTreeFilterTerm = { fg = C.mossgreen, style = { "bold" } },
		NeoTreeTabActive = { bg = active_bg, fg = C.pastelturqoise, style = { "bold" } },
		NeoTreeTabInactive = { bg = inactive_bg, fg = C.grey5 },
		NeoTreeTabSeparatorActive = { fg = active_bg, bg = active_bg },
		NeoTreeTabSeparatorInactive = { fg = inactive_bg, bg = inactive_bg },
		NeoTreeVertSplit = { fg = C.dark0, bg = inactive_bg },
		NeoTreeStatusLineNC = { fg = C.dark1, bg = C.dark1 },

		-- Noice
		NoiceCmdline = { fg = C.grey0 },
		NoiceCmdlineIcon = { fg = C.lightcyan },
		NoiceCmdlineIconSearch = { fg = C.yellow },
		NoiceCmdlinePopupBorder = { fg = C.pastelturqoise },
		NoiceCmdlinePopupBorderSearch = { fg = C.yellow },
		NoiceConfirmBorder = { fg = C.softblue },
		NoiceMini = { fg = C.grey0, blend = 0 },

		-- Notify
		NotifyERRORBorder = { fg = C.red },
		NotifyERRORIcon = { fg = C.red },
		NotifyERRORTitle = { fg = C.red, style = { "italic" } },
		NotifyWARNBorder = { fg = C.yellow },
		NotifyWARNIcon = { fg = C.yellow },
		NotifyWARNTitle = { fg = C.yellow, style = { "italic" } },
		NotifyINFOBorder = { fg = C.softblue },
		NotifyINFOIcon = { fg = C.softblue },
		NotifyINFOTitle = { fg = C.softblue, style = { "italic" } },
		NotifyDEBUGBorder = { fg = C.orange },
		NotifyDEBUGIcon = { fg = C.orange },
		NotifyDEBUGTitle = { fg = C.orange, style = { "italic" } },
		NotifyTRACEBorder = { fg = C.pastelpeach },
		NotifyTRACEIcon = { fg = C.pastelpeach },
		NotifyTRACETitle = { fg = C.pastelpeach, style = { "italic" } },

		-- Rainbow Delimiters
		RainbowDelimiterRed = { fg = C.pastelpink },
		RainbowDelimiterYellow = { fg = C.yellow },
		RainbowDelimiterBlue = { fg = C.softblue },
		RainbowDelimiterOrange = { fg = C.orange },
		RainbowDelimiterGreen = { fg = C.mossgreen },
		RainbowDelimiterViolet = { fg = C.cornflowerblue },
		RainbowDelimiterCyan = { fg = C.softturqoise },

		-- Telescope
		TelescopeNormal = { bg = inactive_bg, fg = C.grey0 },
		TelescopeBorder = { fg = C.turqoise },
		TelescopeSelectionCaret = { fg = C.pastelpink },
		TelescopeSelection = {
			fg = C.grey0,
			bg = O.transparent_background and C.darkgrey4 or C.darkgrey5,
			style = { "bold" },
		},
		TelescopeMatching = { fg = C.springgreen },

		-- Which key
		WhichKey = { link = "NormalFloat" },
		WhichKeyBorder = { link = "FloatBorder" },
		WhichKeyGroup = { fg = C.softblue },
		WhichKeySeparator = { fg = C.grey5 },
		WhichKeyDesc = { fg = C.skyblue },
		WhichKeyValue = { fg = C.grey5 },

		-- Indent blankline
		IblIndent = { fg = C.darkgrey5 },
		IblScope = { fg = C.darkgrey5 },

		-- Trouble
		TroubleText = { fg = C.grey1 },
		TroubleCount = { fg = C.skyblue, bg = O.transparent_background and C.none or C.darkgrey1 },
		TroubleNormal = { fg = C.grey0, bg = O.transparent_background and C.none or C.darkgrey0 },

		-- Ufo
		UfoFoldedFg = { fg = C.pastelturqoise },
		UfoFoldedEllipsis = { fg = C.darkgrey0, bg = C.softblue },
	}
end

return M
