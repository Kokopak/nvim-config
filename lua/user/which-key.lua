local wk = require("which-key")

wk.add({
	{ "<leader>f", group = "file" },
	{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find file" },
	{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
	{ "<leader>fr", "<cmd>Telescope lsp_references<cr>", desc = "LSP references" },
	{ "<leader>fb", "<cmd>NvimTreeToggle<cr>", desc = "File browser" },
	{ "<leader>g", group = "goto" },
	{ "<leader>gd", "<cmd>Telescope lsp_definitions<cr>", desc = "LSP definitions" },
})
