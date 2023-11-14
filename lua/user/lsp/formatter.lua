local formatter = require("formatter")
local util = require("formatter.util")

formatter.setup({
	filetype = {
		lua = {
			function()
				return {
					exe = "stylua",
					args = {
						"--search-parent-directories",
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--",
						"-",
					},
					stdin = true,
				}
			end,
		},
	},
})

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup("FormatAutogroup", { clear = true })
autocmd("BufWritePost", { group = "FormatAutogroup", pattern = "*", command = "FormatWrite" })
