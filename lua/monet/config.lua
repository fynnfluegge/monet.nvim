local config = {
	defaults = {
		transparent_background = false,
		semantic_tokens = true,
		overrides = {},
		styles = {},
	},
}

setmetatable(config, { __index = config.defaults })

return config
