return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "ruff" },
			json = { "prettier" },
			javascript = { "prettier" },
			javascriptreact = { "prettier" },
			typescript = { "prettierd", "prettier" },
			typescriptreact = { "prettierd", "prettier" },
			svelte = { "prettier" },
			sql = { "prettier" },
			sh = { "shfmt" },
			yaml = { "prettier" },
			rust = { "rustfmt", lsp_format = "fallback" },
			["*"] = { "trim_whitespace" },
		},
		format_on_save = {
			timeont_ms = 500,
		},
	},
}
