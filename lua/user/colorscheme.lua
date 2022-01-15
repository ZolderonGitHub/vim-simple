local colorscheme = "gruvbox"

local g = vim.g

-- GRUVBOX
g.gruvbox_bold = false
g.gruvbox_italic = false
g.gruvbox_invert_selection = false
g.gruvbox_italicize_comments = false
g.gruvbox_contrast_dark = 'medium'

-- NORD
g.nord_italic = false;
g.nord_bold = false;

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

