-- Folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldtext = "v:lua.get_fold_text()"
vim.opt.foldnestmax = 5
vim.opt.foldenable = false
