return {
	-- To enable more of the features of rust-analyzer, such as inlay hints and
	-- more
	'simrat39/rust-tools.nvim',
	lazy = true,
	ft = 'rust',
	config = function()

		require('rust-tools').setup {
			tools = { -- rust-tools options
				autoSetHints = true,
				-- hover_with_actions = true,
				inlay_hints = {
					show_parameter_hints = false,
					parameter_hints_prefix = "",
					other_hints_prefix = "",
				},
			},
			-- all the opts to send to nvim-lspconfig
			-- these override the defaults set by rust-tools.nvim
			-- see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer
			server = {
				-- on_attach is a callback called when the language server attachs to the buffer
				settings = {
					-- to enable rust-analyzer settings visit:
					-- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
					["rust-analyzer"] = {
						procMacro = {
							enable = true
						},
					}
				}
			},
		}
	end
}
