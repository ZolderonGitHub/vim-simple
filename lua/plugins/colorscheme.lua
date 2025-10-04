return {
    {
        "gruvbox-community/gruvbox",
        config = function()
            local colorscheme = "gruvbox"

            local g = vim.g

            g.gruvbox_contrast_dark = 'hard'
            g.gruvbox_vert_split = 'bg0'
            g.gruvbox_cursorline = 'bg1'

            function color_buffer(color)
                color = color or colorscheme
                vim.cmd.colorscheme(color)
            end

            color_buffer()
        end
    },
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require'colorizer'.setup()
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        config = function()
            require('lualine').setup {
                options = {
                    icons_enabled = true,
                    theme = 'auto',
                    component_separators = { left = '', right = ''},
                    section_separators = { left = '', right = ''},
                    disabled_filetypes = {},
                    always_divide_middle = true,
                },
                sections = {
                    lualine_a = {'mode'},
                    lualine_b = {'branch', 'diff', 'diagnostics'},
                    lualine_c = {'filename'},
                    lualine_x = {'encoding', 'fileformat', 'filetype'},
                    lualine_y = {'progress'},
                    lualine_z = {'location'}
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = {'filename'},
                    lualine_x = {'location'},
                    lualine_y = {},
                    lualine_z = {}
                },
                tabline = {},
                extensions = {}
            }

        end
    },
    {"kyazdani42/nvim-web-devicons"},
}

