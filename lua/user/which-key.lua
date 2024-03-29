local wk = require("which-key")

wk.register({
	f = {
		name = "file", -- optional group name
		f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
		g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
		b = { "<cmd>NvimTreeToggle<cr>", "File Browser" },
		r = { "<cmd>Telescope lsp_references<cr>", "LSP References" },
	},
	g = {
		name = "goto",
		d = { "<cmd>Telescope lsp_definitions<cr>", "LSP Definitions" },
	},
}, { prefix = "<leader>" })
