return
{
    {"Tetralux/odin.vim"},

    -- Snippets
    {
        "L3MON4D3/LuaSnip",
        build = "make install_jsregexp"
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
