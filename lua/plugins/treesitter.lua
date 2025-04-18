return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter.configs")
            configs.setup({
                ensure_installed = "all",
                sync_install = false,
                highlight = { enable = true, additional_vim_regex_highlighting = false },
                indent = { enable = true },
                autotag = {
                    enable = true,

                    -- https://github.com/windwp/nvim-ts-autotag/issues/125 and others
                    enable_close_on_slash = false,
                }
            })
        end
    }
}
