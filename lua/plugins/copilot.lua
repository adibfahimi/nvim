return {
  "github/copilot.vim",
  cmd = "Copilot",
  lazy = false,
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_assume_mapped = true

    vim.api.nvim_set_keymap("i", "<M-Tab>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
  end,
}
