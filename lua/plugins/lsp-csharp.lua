
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        omnisharp = {
          cmd = {
            -- Altere esse caminho para o seu executável
            "/home/lucasfend/.local/share/omnisharp/omnisharp/omnisharp",
            "--languageserver",
            "--hostPID",
            tostring(vim.fn.getpid()),
          },
          enable_editorconfig_support = true,
          enable_roslyn_analyzers = true,
          organize_imports_on_format = true,
          enable_import_completion = true,
        },
      },
    },
  },
}

