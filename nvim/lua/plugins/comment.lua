return {
  'numToStr/Comment.nvim',
  event = 'VimEnter',
  config = function()
    require('Comment').setup {
      toggler = {
        line = '<C-_>',
        block = "<C-\\>",
      },
      opleader = {
        line = '<C-_>',
        block = "<C-\\>",
      },
    }
  end,
}
