return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = { "c", "python", "asm", "javascript", "css", "html" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
