return
{
    {"Tetralux/odin.vim"},

    {
        "MeanderingProgrammer/render-markdown.nvim",
        config = function()
            require('render-markdown').setup({
                completions = { lsp = { enabled = true } },
            })
        end
    },
    -- Snippets
    {
        "L3MON4D3/LuaSnip",
        build = "make install_jsregexp",
        config = function()
            require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/snippets/"})

            require("luasnip").config.set_config({ -- Setting LuaSnip config
                -- Enable autotriggered snippets
                enable_autosnippets = true,
            })
            print("lol")
        end
    },
    {"rafamadriz/friendly-snippets"},

    -- Tree
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            require("nvim-tree").setup()
        end
    },

    -- Comments
    {"tpope/vim-commentary"},
}
