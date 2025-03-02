return {
  'dhruvasagar/vim-table-mode',
  lazy = true, -- Enables lazy loading
  cmd = { 'TableModeEnable', 'TableModeDisable', 'TableModeToggle' }, -- Load on specific commands
  ft = { 'markdown', 'text', 'org', 'vimwiki' }, -- Load for specific file types
  config = function()
    -- Add any plugin-specific configuration here
    vim.g.table_mode_corner = '|'
  end,
}
