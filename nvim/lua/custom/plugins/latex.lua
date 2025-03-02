return {
  'lervag/vimtex',
  lazy = false, -- Load VimTeX immediately
  init = function()
    -- VimTeX configuration
    -- vim.g.vimtex_view_method = 'zathura'
    vim.g.vimtex_view_general_viewer = 'okular'
    vim.g.vimtex_view_general_options = '--unique file:@pdf#src:@line@tex'
    -- Set VimTeX to use 'make' for compilation
    --vim.g.vimtex_compiler_method = 'generic'
    --vim.g.vimtex_compiler_generic = {
    --  command = 'make',
    --  options = '',
    --}
    vim.g.vimtex_syntax_enabled = 1 -- Keep other syntax features enabled
    vim.g.vimtex_syntax_spell = 0

    -- Optionally disable automatic compilation
    vim.g.vimtex_compiler_enabled = 1
  end,
}
