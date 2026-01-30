-- terminal on vim
return {
  {
    'akinsho/toggleterm.nvim',
    event = 'VeryLazy',
    config = function()
      require('toggleterm').setup {
        open_mapping = '<C-t>',
        direction = 'horizontal',
      }
    end
  }
}
