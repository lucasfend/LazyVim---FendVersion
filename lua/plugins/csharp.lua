return {
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      opts.defaults["<leader>c"] = {
        name = "+csharp",
        r = {
          function()
            local Terminal = require("toggleterm.terminal").Terminal
            local dotnet_run = Terminal:new({
              cmd = "dotnet run",
              hidden = true,
              direction = "float",
              id = 101,
            })
            dotnet_run:toggle()
          end,
          "Run C#",
        },
        b = {
          function()
            local Terminal = require("toggleterm.terminal").Terminal
            local dotnet_build = Terminal:new({
              cmd = "dotnet build",
              hidden = true,
              direction = "float",
              id = 102,
            })
            dotnet_build:toggle()
          end,
          "Build C#",
        },
      }
    end,
  },
}

