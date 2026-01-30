-- encoding
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- enable mouse operations
vim.opt.mouse = 'a'

-- line number
vim.opt.number = true

-- title
vim.opt.title = true

-- spaces & tabs
vim.opt.autoindent = true   -- uses the indent from the previous line
vim.opt.smartindent = true  -- do smart autoindenting when starting new line
vim.opt.copyindent = true   -- copy th previous line structure when starting new line
vim.opt.tabstop = 4         -- number of visual space per TAB 
vim.opt.softtabstop = 2     -- number of spaces in tab when editting
vim.opt.shiftwidth = 2      -- number of spaces to use for autoindent
vim.opt.expandtab = true    -- replace TAB input as spaces

-- clipboard
vim.opt.clipboard = 'unnamed,unnamedplus'

-- cursor
vim.opt.cursorline = true

-- diagnostic
vim.diagnostic.config {
  -- show warnings as virstual text
  virtual_text = true,
  -- virtual_lines = true,
}
