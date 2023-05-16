return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")

	use("nvim-telescope/telescope.nvim")
	use("folke/which-key.nvim")

	-- Treesitter
	use("nvim-treesitter/nvim-treesitter")

	-- Colorschemes
	use("Mofiqul/dracula.nvim")

	-- LSP
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
end)
