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

-- SONOKAI
g.sonokai_style = 'shusia'
g.sonokai_enable_italic = 0
g.sonokai_disable_italic_comment = 1

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

