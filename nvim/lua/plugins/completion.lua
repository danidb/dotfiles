return {
    "saghen/blink.cmp",
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '*',
    opts_extend = { "sources.default" },
    opts = {
        completion = {
            accept = { auto_brackets = { enabled = false }, },
            ghost_text = { enabled = true },
            menu = {
                auto_show = true
            },
        },
        fuzzy = { implementation = "rust" },
        keymap = { preset = "default" },
        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = "mono",
        },
        signature = { enabled = true },
        sources = {
            -- add lazydev to your completion providers
            default = { "lazydev", "lsp", "path", "snippets", "buffer" },
            providers = {
                lazydev = {
                    name = "LazyDev",
                    module = "lazydev.integrations.blink",
                    -- make lazydev completions top priority (see `:h blink.cmp`)
                    score_offset = 100,
                },
            },
        },
    },
}
