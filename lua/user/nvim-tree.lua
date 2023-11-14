local nvim_tree = require("nvim-tree")

nvim_tree.setup({
	disable_netrw = true,
	hijack_netrw = true,
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
	update_focused_file = {
		enable = true,
		update_root = false,
	},
})
