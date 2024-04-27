local config = require "monet.config"
local palette = require "monet.palette"

local monet = {}

--- Apply user settings.
---@param values table
function monet.setup(values)
	if values.dark_mode == false then setmetatable(palette, { __index = palette.light_mode }) end
	if values.color_overrides then
		if values.dark_mode == false then
			setmetatable(palette, { __index = vim.tbl_extend("force", palette.light_mode, values.color_overrides) })
		else
			setmetatable(palette, { __index = vim.tbl_extend("force", palette.defaults, values.color_overrides) })
		end
	end
end

-- Highlight group
function monet.highlight(colors)
	local groups = vim.tbl_extend(
		"force",
		colors,
		type(config.overrides) == "function" and config.overrides() or config.highlight_overrides
	)

	for group, parameters in pairs(groups) do
		if parameters.style then
			for _, style in ipairs(parameters.style) do
				parameters[style] = true
			end
		end
		parameters.style = nil
		vim.api.nvim_set_hl(0, group, parameters)
	end
end

function monet.colorscheme()
	if vim.version().minor < 9 then
		vim.notify(
			"Neovim 0.9+ is required for monet colorscheme",
			vim.log.levels.ERROR,
			{ title = "monet colorscheme" }
		)
		return
	end

	-- Disable semantic tokens
	if not config.semantic_tokens then
		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(args)
				local client = vim.lsp.get_client_by_id(args.data.client_id)
				client.server_capabilities.semanticTokensProvider = nil
			end,
		})
	end

	vim.api.nvim_command "hi clear"
	if vim.fn.exists "syntax_on" then vim.api.nvim_command "syntax reset" end

	vim.o.termguicolors = true
	vim.g.colors_name = "monet"

	local theme = require("monet.theme").get()
	require("monet.theme").set_terminal_colors()
	monet.highlight(theme)

	local plugins = require("monet.plugins").get()
	monet.highlight(plugins)

	local lsp = require("monet.lsp").get()
	monet.highlight(lsp)
end

return monet
