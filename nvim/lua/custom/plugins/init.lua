-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Initialize autocmds
  (function()
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'markdown',
      command = 'setlocal textwidth=80',
    })
  end)(),
}
