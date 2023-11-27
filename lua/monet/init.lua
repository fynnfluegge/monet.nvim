local config = require "monet.config"

local monet = {}

--- Apply user settings.
---@param values table
function monet.setup(values) setmetatable(config, { __index = vim.tbl_extend("force", config.defaults, values) }) end

-- Highlight group
function monet.highlight(colors)
	local groups =
		vim.tbl_extend("force", colors, type(config.overrides) == "function" and config.overrides() or config.overrides)

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
	vim.api.nvim_create_autocmd("LspAttach", {
		callback = function(args)
			local client = vim.lsp.get_client_by_id(args.data.client_id)
			client.server_capabilities.semanticTokensProvider = nil
		end,
	})

	vim.api.nvim_command "hi clear"
	if vim.fn.exists "syntax_on" then vim.api.nvim_command "syntax reset" end

	vim.g.VM_theme_set_by_colorscheme = true
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
