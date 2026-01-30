-- case converter
return {
  {
    'mopp/vim-operator-convert-case',
    dependencies = "kana/vim-operator-user",
    event = 'VeryLazy',
    config = function()
      vim.keymap.set('n', '<leader>c', '<Plug>(operator-convert-case-loop)iw', { silent = true })
    end
  }
}
