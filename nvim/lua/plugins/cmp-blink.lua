-- cmpletion
return {
  'saghen/blink.cmp',
  version = '*',
  event = { "InsertEnter", "CmdLineEnter" },
  opts = {
    keymap = {
      preset = 'enter',
      ['<Tab>'] = {
        function(cmp)
          if cmp.snippet_active() then return cmp.accept()
          else return cmp.select_and_accept() end
        end,
        'snippet_forward',
        'fallback'
      },
    },
  },
  config = function(_, opts)
    require('blink.cmp').setup(opts)
  end,
}
