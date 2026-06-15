return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			theme = "doom",
			config = {
				header = {},
				center = {
					{icon = " ", desc = "Find Files", action = "Telescope find_files", key = "f"},
 					{icon = " ", desc = "Recent Files", action = "Telescope oldfiles", key = "r"},
					{icon = " ", desc = "Find Word", action = "Telescope live_grep", key = "g"},
					{icon = " ", desc = "Lazy", action = "Lazy", key = "l"},
					{icon = " ", desc = "Lazy Update", action = "Lazy update", key="u"},
					{icon = " ", desc = "Lazy Sync", action = "Lazy sync", key="s"},
					{icon = " ", desc = "Quit", action = "qa", key="q"},
				},
				footer = {"Hello Human"},
			},
		})
	end,
}
