vim.keymap.set("n", "<Leader>ff", "<Cmd>Telescope find_files<Cr>")
vim.keymap.set("n", "<Leader>fg", "<Cmd>Telescope live_grep<Cr>")
vim.keymap.set("n", "<Leader>fb", "<Cmd>Telescope buffers<Cr>")
vim.keymap.set("n", "<Leader>fh", "<Cmd>Telescope help_tags<Cr>")

vim.keymap.set("n", "<Leader>ff", '<Cmd>lua require("telescope.builtin").find_files()<Cr>')
vim.keymap.set("n", "<Leader>fg", '<Cmd>lua require("telescope.builtin").live_grep()<Cr>')
vim.keymap.set("n", "<Leader>fb", '<Cmd>lua require("telescope.builtin").buffers()<Cr>')
vim.keymap.set("n", "<Leader>fh", '<Cmd>lua require("telescope.builtin").help_tags()<Cr>')
