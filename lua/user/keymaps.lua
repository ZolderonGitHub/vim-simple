local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

vim.keymap.set("n", "<leader>s", ":vs<CR>")
vim.keymap.set("n", "<leader>v", ":split<CR>")
vim.keymap.set("n", "<leader>z", ":q<CR>")
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<CR>")

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Compilation --
function _G.build()
    if vim.fn.has('win32') == 1 then
        vim.cmd "let &makeprg='build'"
        vim.cmd "silent make"
        vim.cmd "botright copen"
        vim.cmd "wincmd p"
    else
        vim.cmd "let &makeprg='bash ./build.sh'"
        vim.cmd "silent make"
        vim.cmd "botright copen"
        vim.cmd "wincmd p"
    end
end

function _G.launch()
    if vim.fn.has('win32') then
        vim.cmd "let &makeprg='launch'"
    else
        vim.cmd "let &makeprg='bash launch.sh'"
    end
    vim.cmd "silent make"
end

-- toggle diagnostics function

function _G.toggle_diagnostics()
    if vim.g.diagnostics_active then
        vim.g.diagnostics_active = false
        vim.diagnostic.disable()
    else
        vim.g.diagnostics_active = true
        vim.diagnostic.enable()
    end
end

keymap("n", "<leader>m", ":lua build()<CR>", opts)
keymap("n", "<leader>b", ":lua launch()<CR>", opts)

keymap("n", "<leader>xd", ":lua toggle_diagnostics()<CR>", opts)

