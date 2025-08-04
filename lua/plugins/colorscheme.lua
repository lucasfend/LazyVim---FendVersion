return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- carrega antes de outros plugins
    lazy = false,
    config = function()
      require("gruvbox").setup({
        contrast = "hard", -- "soft", "medium", "hard"
        palette_overrides = {},
        overrides = {},
        italic = {
          strings = false,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        bold = true,
      })

      vim.cmd("colorscheme gruvbox")
    end,
  },
}

