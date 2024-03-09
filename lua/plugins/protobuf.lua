return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      {
        "williamboman/mason.nvim",
        opts = function(_, opts)
          opts.ensure_installed = opts.ensure_installed or {}
          vim.list_extend(opts.ensure_installed, { "buf" })
        end,
      },
      {
        "neovim/nvim-lspconfig",
        opts = {
          servers = {
            clangd = {
              filetypes = { "c", "cpp", "objc", "objcpp" },
            },
          },
        },
      },
    },
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = vim.list_extend(opts.sources or {}, {
        nls.builtins.diagnostics.buf.with({
          args = {
            "lint",
          },
        }),
        nls.builtins.formatting.buf,
      })
    end,
  },
}
