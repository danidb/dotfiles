require("rose-pine").setup({
	dark_variant = "main",
})
vim.cmd.colorscheme("rose-pine")

require("lualine").setup({
	options = {
		component_separators = "",
		section_separators = "",
		theme = "rose-pine",
	},
})
