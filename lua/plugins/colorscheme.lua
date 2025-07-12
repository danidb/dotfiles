return {
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        opts = {
            compile = true,
        },
        config = function()
            vim.cmd("colorscheme kanagawa-dragon")
        end
    }
}
