vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- for US keyboard (treat as ':' when ';' is pushed and opposite)
-- vim.keymap.set('n', ';', ':', { noremap = true })
-- vim.keymap.set('n', ':', ';', { noremap = true })

-- reset highlight
vim.keymap.set('n', '<esc>', ':noh<return><esc><RC>', { noremap = true })
