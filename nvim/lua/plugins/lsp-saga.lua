-- enable to ref func def and jump (+ others)
return {
  'nvimdev/lspsaga.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- optional
    'nvim-tree/nvim-web-devicons',     -- optional
  },
  event = 'VeryLazy',
  opts = {
    symbol_in_winbar = { enable = false },
    lightbulb = { enable = false },
    code_action_lightbulb = { enable = true },
  },
  config = function(_, opts)
    require('lspsaga').setup(opts)
    vim.keymap.set("n", "<C-b>", "<cmd>Lspsaga peek_definition<CR>")
    vim.keymap.set("n", "<C-S-b>", "<cmd>Lspsaga goto_definition<CR>")
  end,
}
