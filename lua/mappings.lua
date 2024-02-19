vim.api.nvim_set_keymap('n', 'n', 'nzz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', 'Nzz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'o', 'o<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'O', 'O<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C>s', '<cmd> w <CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Shift-l', '<C-w>+', { noremap = true, silent = true })

-- Resize windows
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize -2<CR>', { noremap = true, silent = true })

-- Macros
vim.fn.setreg('p', ':w | !pylint %', 'c')
vim.fn.setreg('r', ':w | !python3 %', 'c')

-- Leader is Spacebar
vim.g.mapleader = " "


-- TinyVim below:

local map = vim.keymap.set

---- general mappings
--map("n", "<C-s>", "<cmd> w <CR>")
--map("i", "jk", "<ESC>")
--map("n", "<C-c>", "<cmd> %y+ <CR>") -- copy whole filecontent

-- nvimtree
map("n", "<C-n>", "<cmd> NvimTreeToggle <CR>")
map("n", "<C-h>", "<cmd> NvimTreeFocus <CR>")

---- telescope
--map("n", "<leader>ff", "<cmd> Telescope find_files <CR>")
--map("n", "<leader>fo", "<cmd> Telescope oldfiles <CR>")
--map("n", "<leader>fw", "<cmd> Telescope live_grep <CR>")
--map("n", "<leader>gt", "<cmd> Telescope git_status <CR>")

---- bufferline, cycle buffers
map("n", "<Tab>", "<cmd> BufferLineCycleNext <CR>")
map("n", "<S-Tab>", "<cmd> BufferLineCyclePrev <CR>")
map("n", "<C-q>", "<cmd> bd <CR>")

---- comment.nvim
--map("n", "<leader>/", function()
--  require("Comment.api").toggle.linewise.current()
--end)

--map("v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")

-- format
map("n", "<leader>fm", function()
  require("conform").format()
end)

