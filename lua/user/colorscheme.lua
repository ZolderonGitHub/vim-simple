local colorscheme = "gruvbox"

local g = vim.g

-- GRUVBOX
require('gruvbox').setup({
    bold = false,
    italic = false,
})

--g.gruvbox_bold = false
--g.gruvbox_italic = false
--g.gruvbox_invert_selection = false
--g.gruvbox_italicize_comments = false
--g.gruvbox_contrast_dark = 'medium'

-- NORD
g.nord_italic = false;
g.nord_bold = false;

-- TOKYONIGHT
g.tokyonight_italic_comments = false;
g.tokyonight_italic_keywords = false;
g.tokyonight_style = "storm"

-- ONEDARK
g.onedark_comment_style = "NONE"
g.onedark_keyword_style = "NONE"

-- SONOKAI
g.sonokai_style = 'shusia'
g.sonokai_enable_italic = 0
g.sonokai_disable_italic_comment = 1

-- CATPPUCCIN
local catppuccin = require('catppuccin')
catppuccin.setup({
    styles = {
        comments = 'NONE',
        functions = 'NONE',
        keywords = 'NONE',
        strings = 'NONE',
        variables = 'NONE',
    }
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

