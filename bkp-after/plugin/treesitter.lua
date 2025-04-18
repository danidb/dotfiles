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

function _G.get_fold_text()
	return vim.fn.getline(vim.v.foldstart)
end

-- folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldtext = "v:lua.get_fold_text()"
vim.opt.foldnestmax = 5
vim.opt.foldenable = false
