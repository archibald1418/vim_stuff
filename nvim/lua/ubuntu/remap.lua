vim.g.mapleader = " " -- a keystroke to introduce a keymap

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- '" " + pv' will execute Ex (file Explorer)
vim.keymap.set("n", "<leader>q", ':bd<CR>') -- close active buffer (e.g. a nvim window)

-- move selected lines up and down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- move line below and stick it to the right + return cursor at the start
vim.keymap.set('n', "J", "mzJ'z")

--half-page jumping with cursor centering
vim.keymap.set('n', "<C-d>", "<C-d>zz")
vim.keymap.set('n', "<C-d>", "<C-d>zz")

-- make current file execable w/o leaving vim
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', {silent = true})

-- set/unset number lines
vim.keymap.set('n', '<leader>nonu', '<cmd>set nornu<CR><cmd>set nonu<CR>', {silent = true})
vim.keymap.set('n', '<leader>nornu', '<cmd>set nornu<CR>', {silent = true})
vim.keymap.set('n', '<leader>nu', '<cmd>set nu<CR><cmd>set rnu<CR>', {silent = true})
vim.keymap.set('n', '<leader>nu', '<cmd>set nu<CR><cmd>set rnu<CR>', {silent = true})
vim.keymap.set('n', '<leader>rnu', '<cmd>set rnu<CR>', {silent = true})
