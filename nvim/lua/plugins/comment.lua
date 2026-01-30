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
      post_hook = function()
        -- send to next line after comment out/in
        vim.cmd("normal! j^")
      end,
    }
  end,
}
