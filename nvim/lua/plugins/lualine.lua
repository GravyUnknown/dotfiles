return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config=function()


        require("lualine").setup{
            options = {
                theme = "everforest",
                component_separators = {left="", right=""},
                section_separators = {left="", right=""}
            },
            sections = {
                lualine_a = {"mode"},
                lualine_b = {'filename', 'branch', 'diff'},
                lualine_c = {'diagnostics'},
                lualine_x = {'fileformat', 'filetype'},
                lualine_y = {'progress'},
                lualine_z = {'location'}

            }
        }

    end,
}
