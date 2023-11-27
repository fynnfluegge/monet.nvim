local config = {
	defaults = {
		transparent_background = false,
		overrides = {},
		styles = {},
	},
}

setmetatable(config, { __index = config.defaults })

return config
