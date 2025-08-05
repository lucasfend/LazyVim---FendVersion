return {
  {
    "OmniSharp/omnisharp-vim",
    ft = "cs",
    build = function()
      vim.cmd [[!cd server && bash install.sh]]
    end,
    init = function()
      -- Configurações de inicialização
      vim.g.OmniSharp_server_use_net6 = 1
      vim.g.OmniSharp_highlight_types = 2
    end
  },
  {
    "nickspoons/vim-sharpenup",
    ft = "cs",
    dependencies = { "OmniSharp/omnisharp-vim" },
    config = function()
      -- Atalhos específicos para C#
      vim.keymap.set('n', '<leader>gd', '<Plug>(omnisharp_go_to_definition)', { desc = 'Go to definition' })
      vim.keymap.set('n', '<leader>fi', '<Plug>(omnisharp_find_implementations)', { desc = 'Find implementations' })
      vim.keymap.set('n', '<leader>fs', '<Plug>(omnisharp_find_symbol)', { desc = 'Find symbol' })
      vim.keymap.set('n', '<leader>rn', '<Plug>(omnisharp_rename)', { desc = 'Rename symbol' })
    end
  },
  {
    "Hoffs/omnisharp-extended-lsp.nvim",
    ft = "cs",
    dependencies = { "OmniSharp/omnisharp-vim" }
  }
}
