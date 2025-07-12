return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "ruff" },
			json = { "prettier" },
			javascript = { "prettier" },
			javascriptreact = { "prettier " },
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

-- return {
--     {
--         "stevearc/conform.nvim",
--             lazy = false,
--             keys = {
--                 {
--                     "<leader>cF",
--                     function()
--                         require("conform").format({ formatters = { "injected" }, timeout_ms = 3000 })
--                     end,
--                     mode = { "n", "v" },
--                     desc = "Format Injected Langs",
--                 },
--             },
--             opts = function()
--                 ---@type conform.setupOpts
--                 local opts = {
--                     default_format_opts = {
--                         timeout_ms = 3000,
--                         async = false,           -- not recommended to change
--                         quiet = false,           -- not recommended to change
--                         lsp_format = "fallback", -- not recommended to change
--                     },
--                     formatters_by_ft = {
--                         lua = { "stylua" },
--                         fish = { "fish_indent" },
--                         sh = { "shfmt" },
--                         -- Conform will run multiple formatters sequentially
--                         python = { "isort", "black" },
--                         -- You can customize some of the format options for the filetype (:help conform.format)
--                         rust = { "rustfmt", lsp_format = "fallback" },
--                         astro = { "prettier" },
--                         json = { "prettier" },
--                         javascript = { "prettier" },
--                         javascriptreact = { "prettier " },
--                         typescript = { "prettierd", "prettier" },
--                         typescriptreact = { "prettierd", "prettier" },
--                         svelte = { "prettier" },
--                         sql = { "prettier" },
--                         ["*"] = { "codespell" },
--                         ["_"] = { "trim_whitespace" }
--                     },
--                     format_on_save = {
--                         timeout_ms = 500
--                     },
--                     -- The options you set here will be merged with the builtin formatters.
--                     -- You can also define any custom formatters here.
--                     ---@type table<string, conform.FormatterConfigOverride|fun(bufnr: integer): nil|conform.FormatterConfigOverride>
--                     formatters = {
--                         injected = { options = { ignore_errors = true } },
--                         -- # Example of using dprint only when a dprint.json file is present
--                         -- dprint = {
--                         --   condition = function(ctx)
--                         --     return vim.fs.find({ "dprint.json" }, { path = ctx.filename, upward = true })[1]
--                         --   end,
--                         -- },
--                         --
--                         -- # Example of using shfmt with extra args
--                         -- shfmt = {
--                         --   prepend_args = { "-i", "2", "-ci" },
--                         -- },
--                     },
--                 }
--                 return opts
--             end,
--             config = function()
--                 vim.api.nvim_create_user_command("Format", function(args)
--                     local range = nil
--                     if args.count ~= -1 then
--                         local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)
--                             [1]
--                         range = {
--                             start = { args.line1, 0 },
--                             ["end"] = { args.line2, end_line:len() },
--                         }
--                     end
--                     require("conform").format({ async = true, lsp_format = "fallback", range = range })
--                 end, { range = true })
--                 vim.api.nvim_create_autocmd("BufWritePost", { pattern = "*", command = "Format" })
--             end,
--         }
--     }
