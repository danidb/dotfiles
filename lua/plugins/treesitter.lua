return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				ensure_installed = {
					"terraform",
					"kcl",
					"kconfig",
					"jsdoc",
					"yaml",
					"json",
					"tmux",
					"helm",
					"cuda",
					"dockerfile",
					"hcl",
					"lua",
					"c",
					"javascript",
					"typescript",
					"tsx",
					"markdown",
					"svelte",
					"sql",
					"rust",
					"toml",
					"html",
					"css",
					"r",
					"python",
					"prisma",
					"json",
					"yaml",
					"astro",
					"html",
					"css",
					"cuda",
					"cpp",
					"tsv",
				},
				sync_install = false,
				highlight = { enable = true, additional_vim_regex_highlighting = false },
				indent = { enable = true },
				autotag = {
					enable = true,

					-- https://github.com/windwp/nvim-ts-autotag/issues/125 and others
					enable_close_on_slash = false,
				},
			})
		end,
	},
}
