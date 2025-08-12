return {
  {
    "yetone/avante.nvim",
    version = false,
    event = "VeryLazy",
    opts = {
      provider = "openai",
      providers = {
        openai = {
          -- api_key_name = nil, -- opcional, pode remover
          model = "gpt-4o",
          endpoint = "https://api.openai.com/v1",
          api_key_name = "OPENAI_API_KEY",
          extra_request_body = {
            temperature = 1,
            max_tokens = 16384,
          },
        },
      },
      suggestion = {
        next = "<M-]>",
        prev = "<M-[>",
        accept = "<M-h>",
        dismiss = "<C-]>",
      },
    },
    build = "make",
    dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "echasnovski/mini.pick", -- for file_selector provider mini.pick
    "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
    "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "ibhagwan/fzf-lua", -- for file_selector provider fzf
    "stevearc/dressing.nvim", -- for input provider dressing
    "folke/snacks.nvim", -- for input provider snacks
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    "zbirenbaum/copilot.lua", -- for providers='copilot'
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = { file_types = { "markdown", "Avante" } },
        ft = { "markdown", "Avante" },
      },
      {
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          default = {
            use_absolute_path = true,
            prompt_for_file_name = false,
            embed_image_as_base64 = false,
            drag_and_drop = { insert_mode = true },
          },
        },
      },
    },
  }
}

