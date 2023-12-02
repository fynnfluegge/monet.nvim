local C = require "monet.palette"
local O = require "monet.config"
local U = require "monet.utils"

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
		DashboardShortCut = { fg = C.skyblue },
		DashboardHeader = { fg = C.softblue },
		DashboardCenter = { fg = C.mossgreen },
		DashboardFooter = { fg = C.yellow, style = { "italic" } },
		DashboardMruTitle = { fg = C.lightcyan },
		DashboardProjectTitle = { fg = C.lightcyan },
		DashboardFiles = { fg = C.pastelturqoise },
		DashboardKey = { fg = C.orange },
		DashboardDesc = { fg = C.softblue },
		DashboardIcon = { fg = C.skyblue, bold = true },

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
		NeoTreeGitUntracked = { fg = C.cornflowerblue },
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

		-- Rainbow Delimiters
		RainbowDelimiterRed = { fg = C.pastelpink },
		RainbowDelimiterYellow = { fg = C.yellow },
		RainbowDelimiterBlue = { fg = C.softblue },
		RainbowDelimiterOrange = { fg = C.orange },
		RainbowDelimiterGreen = { fg = C.mossgreen },
		RainbowDelimiterViolet = { fg = C.cornflowerblue },
		RainbowDelimiterCyan = { fg = C.softturqoise },

		-- Telescope
		TelescopeNormal = { link = "NormalFloat" },
		TelescopeBorder = { fg = C.turqoise },
		TelescopeSelectionCaret = { fg = C.pastelpink },
		TelescopeSelection = {
			fg = O.transparent_background and C.pastelpink or C.grey0,
			bg = O.transparent_background and C.none or C.darkgrey5,
			style = { "bold" },
		},
		TelescopeMatching = { fg = C.turqoise },

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
		TroubleText = { fg = C.mossgreen },
		TroubleCount = { fg = C.skyblue, bg = O.transparent_background and C.none or C.darkgrey1 },
		TroubleNormal = { fg = C.grey0, bg = O.transparent_background and C.none or C.darkgrey0 },
	}
end

return M
