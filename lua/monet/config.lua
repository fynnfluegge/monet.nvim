local config = {
	defaults = {
		transparent_background = false,
		dark_mode = true,
		semantic_tokens = true,
		highlight_overrides = {},
		color_overrides = {},
		styles = {},
	},
}

setmetatable(config, { __index = config.defaults })

return config
