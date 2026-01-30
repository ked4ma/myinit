-- reformat json (minimize / expand)
return {
  'Wansmer/treesj',
  dependencies = { 'nvim-treesitter/nvim-treesitter' }, -- if you install parsers with `nvim-treesitter`
  event = 'VeryLazy',
  config = function()
    require('treesj').setup {
      -- disable default key binds
      use_default_keymaps = false,
    }
    -- set only the toggle bind
    vim.keymap.set('n', '<leader>j', require('treesj').toggle)
  end,
}
