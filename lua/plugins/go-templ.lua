-- local Util = require("lazyvim.util")

return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    servers = {
      templ = {},
      html = { filetypes = { "html", "templ" } },
      htmx = { filetypes = { "html", "templ" } },
      tailwindcss = {
        init_options = {
          userLanguages = { templ = "html" },
          filetypes = { "templ", "astro", "javascript", "typescript", "react" },
        },
      },
    },
  },
  -- setup = function()
  --   local lspconfig = require("lspconfig")
  --
  --   local capabilities = vim.lsp.protocol.make_client_capabilities()
  --
  --   local servers = { "gopls", "ccls", "cmake", "tsserver", "templ" }
  --   for _, lsp in ipairs(servers) do
  --     lspconfig[lsp].setup({
  --       on_attach = Util.lsp.on_attach,
  --       capabilities = capabilities,
  --     })
  --   end
  --
  --   lspconfig.html.setup({
  --     on_attach = Util.lsp.on_attach,
  --     capabilities = capabilities,
  --     filetypes = { "html", "templ" },
  --   })
  --
  --   lspconfig.htmx.setup({
  --     on_attach = Util.lsp.on_attach,
  --     capabilities = capabilities,
  --     filetypes = { "html", "templ" },
  --   })
  --
  --   lspconfig.tailwindcss.setup({
  --     on_attach = Util.lsp.on_attach,
  --     capabilities = capabilities,
  --     filetypes = { "templ", "astro", "javascript", "typescript", "react" },
  --     init_options = { userLanguages = { templ = "html" } },
  --   })
  -- end,
}
