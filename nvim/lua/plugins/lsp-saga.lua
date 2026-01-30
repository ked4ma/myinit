return {
  'nvimdev/lspsaga.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- optional
    'nvim-tree/nvim-web-devicons',     -- optional
  },
  event = 'VeryLazy',
  config = function()
    require('lspsaga').setup()
    vim.keymap.set("n", "<C-m>", "<cmd>Lspsaga peek_definition<CR>")
    vim.keymap.set("n", "<C-S-m>", "<cmd>Lspsaga goto_definition<CR>")
  end,
}
