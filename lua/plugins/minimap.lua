return {
	"echasnovski/mini.map",
	version = false,
	config = function()
		require("mini.map").setup()
		vim.keymap.set("n", "<leader>mm", ":lua MiniMap.toggle()<CR>", {desc = "Toggle minimap"})
	end,
}
