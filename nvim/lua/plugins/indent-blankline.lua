return {
  'lukas-reineke/indent-blankline.nvim',
  event = 'VimEnter',
  main = "ibl",
  opts = {},
  config = function()
    require('ibl').setup {
      scope = { enabled = false }
    }
  end,
}
