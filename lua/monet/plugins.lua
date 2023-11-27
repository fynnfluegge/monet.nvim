local C = require "monet.palette"
local O = require "monet.config"
local U = require "monet.utils"

local M = {}

function M.get()
	local active_bg = O.transparent_background and C.none or C.mantle
	local inactive_bg = O.transparent_background and C.none or C.base
	return {
		-- Neo-tree
		NeoTreeDirectoryName = { fg = C.blue },
		NeoTreeDirectoryIcon = { fg = C.blue },
		NeoTreeNormal = { fg = C.text, bg = active_bg },
		NeoTreeNormalNC = { fg = C.text, bg = active_bg },
		NeoTreeExpander = { fg = C.overlay0 },
		NeoTreeIndentMarker = { fg = C.overlay0 },
		NeoTreeRootName = { fg = C.blue, style = { "bold" } },
		NeoTreeSymbolicLinkTarget = { fg = C.pink },

		NeoTreeGitAdded = { fg = C.pastelgreen },
		NeoTreeGitConflict = { fg = C.red },
		NeoTreeGitDeleted = { fg = C.red },
		NeoTreeGitIgnored = { fg = C.overlay0 },
		NeoTreeGitModified = { fg = C.yellow },
		NeoTreeGitUnstaged = { fg = C.red },
		NeoTreeGitUntracked = { fg = C.mauve },
		NeoTreeGitStaged = { fg = C.green },

		NeoTreeFloatBorder = { link = "FloatBorder" },
		NeoTreeFloatTitle = { link = "FloatTitle" },

		NeoTreeFileNameOpened = { fg = C.pink },
		NeoTreeDimText = { fg = C.overlay1 },
		NeoTreeFilterTerm = { fg = C.green, style = { "bold" } },
		NeoTreeTabActive = { bg = active_bg, fg = C.lavender, style = { "bold" } },
		NeoTreeTabInactive = { bg = inactive_bg, fg = C.overlay0 },
		NeoTreeTabSeparatorActive = { fg = active_bg, bg = active_bg },
		NeoTreeTabSeparatorInactive = { fg = inactive_bg, bg = inactive_bg },
		NeoTreeVertSplit = { fg = C.base, bg = inactive_bg },
		NeoTreeStatusLineNC = { fg = C.mantle, bg = C.mantle },

		-- Alpha
		DashboardShortCut = { fg = C.pink },
		DashboardHeader = { fg = C.blue },
		DashboardCenter = { fg = C.green },
		DashboardFooter = { fg = C.yellow, style = { "italic" } },
		DashboardMruTitle = { fg = C.sky },
		DashboardProjectTitle = { fg = C.sky },
		DashboardFiles = { fg = C.lavender },
		DashboardKey = { fg = C.peach },
		DashboardDesc = { fg = C.blue },
		DashboardIcon = { fg = C.pink, bold = true },

		-- Aerial
		AerialLine = { fg = C.yellow, bg = C.none },
		AerialGuide = { fg = C.overlay2 },
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

		RainbowDelimiterRed = { fg = C.red },
		RainbowDelimiterYellow = { fg = C.yellow },
		RainbowDelimiterBlue = { fg = C.blue },
		RainbowDelimiterOrange = { fg = C.peach },
		RainbowDelimiterGreen = { fg = C.green },
		RainbowDelimiterViolet = { fg = C.mauve },
		RainbowDelimiterCyan = { fg = C.teal },

		TelescopeNormal = { link = "NormalFloat" },
		TelescopeBorder = { link = "FloatBorder" },
		TelescopeSelectionCaret = { fg = C.flamingo },
		TelescopeSelection = {
			fg = O.transparent_background and C.flamingo or C.text,
			bg = O.transparent_background and C.none or C.surface0,
			style = { "bold" },
		},
		TelescopeMatching = { fg = C.blue },

		WhichKey = { link = "NormalFloat" },
		WhichKeyBorder = { link = "FloatBorder" },

		WhichKeyGroup = { fg = C.blue },
		WhichKeySeparator = { fg = C.overlay0 },
		WhichKeyDesc = { fg = C.pink },
		WhichKeyValue = { fg = C.overlay0 },

		IblIndent = { fg = C.surface0 },
		IblScope = { fg = C.surface0 },
	}
end

return M
