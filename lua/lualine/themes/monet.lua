local C = require "monet.palette"
local O = require "monet.config"

local transparent_bg = O.transparent_background and "NONE" or C.dark1

local monet = {

	normal = {
		a = { bg = C.lightcyan, fg = C.dark1, gui = "bold" },
		b = { bg = C.darkgrey4, fg = C.lightcyan },
		c = { bg = transparent_bg, fg = C.grey0 },
	},
	insert = {
		a = { bg = C.mossgreen, fg = C.dark0, gui = "bold" },
		b = { bg = C.darkgrey4, fg = C.mossgreen },
	},
	terminal = {
		a = { bg = C.mossgreen, fg = C.dark0, gui = "bold" },
		b = { bg = C.darkgrey4, fg = C.mossgreen },
	},
	command = {
		a = { bg = C.orange, fg = C.dark0, gui = "bold" },
		b = { bg = C.darkgrey4, fg = C.orange },
	},
	visual = {
		a = { bg = C.cornflowerblue, fg = C.dark0, gui = "bold" },
		b = { bg = C.darkgrey4, fg = C.cornflowerblue },
	},
	replace = {
		a = { bg = C.red, fg = C.dark0, gui = "bold" },
		b = { bg = C.darkgrey4, fg = C.red },
	},
	inactive = {
		a = { bg = transparent_bg, fg = C.softblue },
		b = { bg = transparent_bg, fg = C.darkgrey1, gui = "bold" },
		c = { bg = transparent_bg, fg = C.grey5 },
	},
}

return monet
