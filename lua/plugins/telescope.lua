return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-media-files.nvim",
            { 'nvim-telescope/telescope-fzf-native.nvim', build = "make" },
        },
        config = function()
            local status_ok, telescope = pcall(require, "telescope")
            if not status_ok then
                return
            end

            telescope.load_extension('media_files')

            telescope.setup({
                defaults = {
                    file_ignore_patterns = {
                        "vendor",
                        "build",
                    }
                }
            })

            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>f", builtin.find_files, {})
            vim.keymap.set("n", "<leader>b", builtin.buffers, {})
            vim.keymap.set("n", "<leader>zf", builtin.live_grep, {})
            vim.keymap.set("n", "<leader>zc", builtin.colorscheme, {})
        end
    },
}

