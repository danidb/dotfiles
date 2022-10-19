require("settings")
require("plugins")
-- Opt in to filetype.lua as per https://neovim.io/news/2022/04
-- This is done so that we can define our own filetype for Astro, since
-- nvim can't recognize .astro automatically as of 07/10/2022 (lua/filetypes.lua)
vim.g.do_filetype_lua = 1
require("filetypes")
