return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "kyazdani42/nvim-web-devicons" },
        opts = {
            options = {
                component_separators = "",
                section_separators = "",
                theme = "auto",
            },
            sections = {
                lualine_a = { "filename" },
                lualine_b = { "location" },
                lualine_c = { "diagnostics" },
                lualine_x = { "" },
                lualine_y = { "diff" },
                lualine_z = { "branch" },
            },
        }
    }
}
