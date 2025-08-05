return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Comente isso se for usar typescript-tools
      require("lspconfig").tsserver.setup({})
      require("lspconfig").angularls.setup({})
    end,
  },

  {
    "nvimtools/none-ls.nvim",
    opts = function()
      local null_ls = require("null-ls")
      return {
        sources = {
          null_ls.builtins.formatting.prettier.with({
            filetypes = {
              "typescript", "typescriptreact", "javascript",
              "html", "css", "scss"
            },
          }),
        },
      }
    end,
  },

  -- Alternativa moderna ao tsserver
  -- Descomente isso se quiser usar em vez de tsserver
  -- {
  --   "pmizio/typescript-tools.nvim",
  --   dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  --   opts = {},
  -- },
}

