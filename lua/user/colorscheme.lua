local colorscheme = "gruvbox"

local g = vim.g

g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
require("catppuccin").setup({
    transparent_background = false,
	term_colors = true,
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
    no_italic = true,
    no_bold = true,
	styles = {
		comments = {},
		conditionals = {},
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	integrations = {
        indent_blankline = {
            enabled = true,
            colored_indent_levels = false
        },
		treesitter = true,
		cmp = true,
		gitsigns = true,
		telescope = true,
		nvimtree = true,
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = {},
                hints = {},
                warnings = {},
                information = {}
            },
            underlines = {
                errors = { "underline" },
                hints = { "underline" },
                warnings = { "underline" },
                information = { "underline" },
            }
        },
		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
	color_overrides = {},
	highlight_overrides = {},
})

-- NORD
g.nord_italic = false;
g.nord_bold = false;

-- SONOKAI
g.sonokai_style = 'shusia'
g.sonokai_enable_italic = 0
g.sonokai_disable_italic_comment = 1

-- gruvbox
g.gruvbox_contrast_dark = 'hard'
g.gruvbox_vert_split = 'bg0'
g.gruvbox_cursorline = 'bg1'

function color_buffer(color)
    color = color or colorscheme
    vim.cmd.colorscheme(color)
end

color_buffer()

