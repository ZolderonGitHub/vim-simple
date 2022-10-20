local colorscheme = "catppuccin"

local g = vim.g

g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
require("catppuccin").setup({
    transparent_background = true,
	term_colors = true,
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
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

-- GRUVBOX
require('gruvbox').setup({
    bold = false,
    italic = false,
})

g.gruvbox_baby_background_color = "dark"
g.gruvbox_baby_transparent_mode = false
g.gruvbox_baby_comment_style = "NONE"
g.gruvbox_baby_keyword_style = "NONE"
g.gruvbox_baby_function_style = "NONE"
g.gruvbox_baby_string_style = "NONE"

--g.gruvbox_bold = false
--g.gruvbox_italic = false
--g.gruvbox_invert_selection = false
--g.gruvbox_italicize_comments = false
--g.gruvbox_contrast_dark = 'medium'

-- NORD
g.nord_italic = false;
g.nord_bold = false;

-- SONOKAI
g.sonokai_style = 'shusia'
g.sonokai_enable_italic = 0
g.sonokai_disable_italic_comment = 1

-- DOOM ONE
g.doom_one_terminal_colors = true
g.doom_one_italic_comments = false
g.doom_one_enable_treesitter = true

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

