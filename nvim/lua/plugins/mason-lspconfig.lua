return {
  "mason-org/mason-lspconfig.nvim",
  event = 'VeryLazy',
  opts = {
    -- https://github.com/neovim/nvim-lspconfig/tree/master/lsp
    ensure_installed = {
      'bashls',
      'docker_language_server',
      -- 'java-language-server',
      'kotlin_lsp',
      'lua_ls',
      'markdown_oxide',
      'pylsp',
      -- 'rls',
      -- 'sqls',
      -- 'vimls',
    },
    automatic_enable = true,
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
  config = function(_, opts)
    require("mason-lspconfig").setup(opts)
  end,
}
