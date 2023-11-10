require("nvim-treesitter.configs").setup({
	ensure_installed = "all",
	sync_install = false,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	autotag = {
		enable = true,
		-- https://github.com/windwp/nvim-ts-autotag/issues/125 and others
		enable_close_on_slash = false,
	},
})
