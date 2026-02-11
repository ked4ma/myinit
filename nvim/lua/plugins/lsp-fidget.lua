return {
  "j-hui/fidget.nvim",
  event = 'VeryLazy',
  opts = {
    -- options
  },
  config = function()
    require('fidget').setup()
  end,
}
