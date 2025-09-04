return {
	{
		"nvim-telescope/telescope.nvim",
		cmd = "Telescope",
		module = "telescope",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			defaults = {
				sorting_strategy = "ascending",
				layout_strategy = "horizontal",
				layout_config = { prompt_position = "top" },
				file_ignore_patterns = {
					"node_modules",
				},
				border = true,
			},
			extensions = {
				file_browser = {
					grouped = true,
					auto_depth = true,
					hijack_netrw = false,
					hidden = true,
				},
				fzf = {},
			},
		},
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	},
}
