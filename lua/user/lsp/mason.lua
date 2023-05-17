local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

mason.setup()
mason_lspconfig.setup()

mason_lspconfig.setup_handlers({
	function(server_name)
		lspconfig[server_name].setup({})
	end,

	["pyright"] = function()
		lspconfig.pyright.setup({
			settings = {
				python = {
					analysis = {
						typeCheckingMode = "off",
					},
				},
			},
		})
	end,
})
