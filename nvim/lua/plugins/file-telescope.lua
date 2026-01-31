-- file explorer (include fuzzy search)

-- external deps
--   - BurntSushi/ripgrep
return {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  cmd = { 'Telescope', },
  event = { 'BufReadPre', 'BufNewFile', },
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
    { 
      'nvim-telescope/telescope-frecency.nvim',
      config = function()
        local telescope = require('telescope')
        telescope.setup {
          extensions = {
            frecency = {
              show_scores = true,
            },
          },
        }
        telescope.load_extension('frecency')
      end,
      dependencies = { 'kkharji/sqlite.lua' },
    },
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    }
  },
  config = function()
    local telescope = require('telescope')
    telescope.setup {
      defaults = {
	    treesitter = false,
	    file_ignore_patterns = {
          "^.git/",
          "^node_modules/",
          "%.jpg",
          "%.jpeg",
          "%.png",
          "%.pdf",
          "%.gif",
          "%.svg",
          "%.avif",
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,                   -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true,    -- override the file sorter
          case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
          -- the default case_mode is "smart_case"
        }
      }
    }
    telescope.load_extension('fzf')
  end,
  keys = {
    { '<leader>m', '<cmd>Telescope marks<CR>', desc = 'jump to mark' },
    { '<leader><leader>', '<cmd>Telescope frecency<CR>', desc = 'search files' },
    { '<C-f>', '<cmd>Telescope live_grep<CR>', desc = 'live grep' },
  },
}
