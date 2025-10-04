return {
    {
        "folke/which-key.nvim",
        config = function()
            local wk = require("which-key")
            wk.setup {
                preset = "modern",
                delay = 1000
            }
        end
    },
}

