return {
  -- Initialize autocmds
  (function()
    vim.api.nvim_create_autocmd('BufWritePost', {
      pattern = '*.md',
      callback = function()
        vim.cmd 'silent !make > /dev/null 2>&1 &'
      end,
    })
  end)(),
}
