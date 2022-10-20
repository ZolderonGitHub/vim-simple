local status, configs = pcall(require("nvim-treesitter.configs"))
if (not status) then return end
require('nvim-treesitter.install').compilers = {"clang"}
configs.setup {
    ensure_installed = { "c", "cpp", "ocaml", "python", "javascript", "json" },
    sync_install = false, 
    ignore_install = { "" }, -- List of parsers to ignore installing
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "" }, -- list of language that will be disabled
        additional_vim_regex_highlighting = true,

    },
    indent = { enable = false, disable = { "yaml" } },
}

