local formatter = require("formatter")
local util = require("formatter.util")

formatter.setup({
	filetype = {
		lua = { require("formatter.filetypes.lua").stylua },
		python = { require("formatter.filetypes.python").ruff, require("formatter.filetypes.python").isort },
	},
})

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup("FormatAutogroup", { clear = true })
autocmd("BufWritePost", { group = "FormatAutogroup", pattern = "*", command = "FormatWrite" })
