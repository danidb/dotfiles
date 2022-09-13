require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	try_node_modules = true,
	filetype = {
		lua = require("formatter.filetypes.lua").stylua,
		javascript = require("formatter.filetypes.javascript").prettier,
		javascriptreact = require("formatter.filetypes.javascriptreact").prettier,
		typescript = require("formatter.filetypes.typescript").prettier,
		typescriptreact = require("formatter.filetypes.typescriptreact").prettier,
		["*"] = require("formatter.filetypes.any").remove_trailing_whitespacee,
	},
})
vim.api.nvim_create_autocmd("BufWritePost", { pattern = "*", command = "FormatWrite" })
