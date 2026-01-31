-- syntax parser
return {
  'nvim-treesitter/nvim-treesitter',
  event = 'VeryLazy',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      -- A list of parser names, or "all" (the five listed parsers should always be installed)
      ensure_installed = {
        'bash',
        'css',
        'dockerfile',
        'html',
        'java',
        'javascript',
        'json',
        'kotlin',
        'lua',
        'make',
        'python',
        'rust',
        'sql',
        'toml',
        'vim',
        'vimdoc',
        'xml',
        'yaml'
      },
    
      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,
    
      -- Automatically install missing parsers when entering buffer
      auto_install = true,
    
      highlight = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<C-n>',
          node_incremental = '<C-n>',
          scope_incremental = '<C-s>',
          node_decremental = '<C-r>',
        },
      },
      indent = { enable = true },
    }
  end
}
