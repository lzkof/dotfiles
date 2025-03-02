return {
  --    -- Runs make after saving .tex and .md files
  --    {
  --        "nvim-lua/plenary.nvim", -- required dependency
  --        config = function()
  --            local autocmd = vim.api.nvim_create_autocmd
  --            local augroup = vim.api.nvim_create_augroup
  --
  --            -- Create a new autocmd group
  --            local make_group = augroup("RunMakeOnSave", { clear = true })
  --
  --            -- Autocmd for running make after saving .tex and .md files
  --            autocmd("BufWritePost", {
  --                pattern = { "*.tex", "*.md" },
  --                group = make_group,
  --                callback = function()
  --                    vim.cmd("!make")
  --                end,
  --            })
  --        end,
  --    }
}
