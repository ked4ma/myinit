return {
  'lambdalisue/fern.vim',
  keys = {
    {
      '<C-b>',
      function()
        local fern_win_id = nil

        -- search fern window
        for _, win in ipairs(vim.api.nvim_list_wins()) do
          local buf = vim.api.nvim_win_get_buf(win)
          local ft = vim.api.nvim_buf_get_option(buf, 'filetype')
          if ft == 'fern' then
            fern_win_id = win
            break
          end
        end

        if fern_win_id == nil then
          -- fern drawer is invisible -> open
          -- Fernが開いていない → 開く
          vim.cmd('Fern . -reveal=% -drawer -width=40<CR> -toggle')
        elseif fern_win_id == vim.api.nvim_get_current_win() then
          -- fern drawer is visible and focused -> close
          vim.cmd('close')
        else
          -- fern drawer is visible and editing files -> focus fern drawer
          vim.api.nvim_set_current_win(fern_win_id)
        end
      end,
      desc = 'Smart toggle/focus Fern drawer',
    },
  },
  dependencies = {
    { 'lambdalisue/nerdfont.vim' },
    {
      'lambdalisue/fern-renderer-nerdfont.vim',
      config = function()
        vim.g['fern#renderer'] = 'nerdfont'
      end
    },
    {
      'lambdalisue/glyph-palette.vim',
      config = function()
        vim.cmd [[
          augroup my_glyph_palette
            autocmd! *
            autocmd FileType fern call glyph_palette#apply()
            autocmd FileType nerdtree,startify call glyph_palette#apply()
          augroup END
        ]]
      end
    },
  },
}

