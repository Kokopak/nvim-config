return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")

	-- LSP
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
end)
