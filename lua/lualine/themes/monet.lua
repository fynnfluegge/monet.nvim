local C = require "monet.palette"
local O = require "monet.config"

local transparent_bg = O.transparent_background and "NONE" or C.mantle

local monet = {

	normal = {
		a = { bg = C.blue, fg = C.mantle, gui = "bold" },
		b = { bg = C.surface1, fg = C.blue },
		c = { bg = transparent_bg, fg = C.text },
	},
	insert = {
		a = { bg = C.green, fg = C.base, gui = "bold" },
		b = { bg = C.surface1, fg = C.green },
	},
	terminal = {
		a = { bg = C.green, fg = C.base, gui = "bold" },
		b = { bg = C.surface1, fg = C.green },
	},
	command = {
		a = { bg = C.peach, fg = C.base, gui = "bold" },
		b = { bg = C.surface1, fg = C.peach },
	},
	visual = {
		a = { bg = C.mauve, fg = C.base, gui = "bold" },
		b = { bg = C.surface1, fg = C.mauve },
	},
	replace = {
		a = { bg = C.red, fg = C.base, gui = "bold" },
		b = { bg = C.surface1, fg = C.red },
	},
	inactive = {
		a = { bg = transparent_bg, fg = C.blue },
		b = { bg = transparent_bg, fg = C.surface1, gui = "bold" },
		c = { bg = transparent_bg, fg = C.overlay0 },
	},
}

return monet
