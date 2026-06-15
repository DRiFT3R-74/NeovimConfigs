return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"pyright",
					"ts_ls",
					"html",
					"cssls",
				},
				automatic_installation = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config["ccls"] = {cmd = { "ccls" }}
			vim.lsp.config["pyright"] = {cmd = { "pyright-langserver", "--stdio" }}
			vim.lsp.config["ts_ls"] = {cmd = { "typescript-language-server", "--studio"}}
			vim.lsp.config["html"] = {cmd = { "vscode-html-language-server", "--studio"}}
			vim.lsp.config["cssls"] = {cmd = { "vscode-html-language-server", "--studio"}}
			vim.lsp.enable("ccls", "pyright", "ts_ls", "html", "cssls")
		end,
	},
}





