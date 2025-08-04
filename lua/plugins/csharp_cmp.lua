vim.api.nvim_create_autocmd("FileType", {
  pattern = "cs",
  callback = function()
    local cmp = require("cmp")
    cmp.setup.buffer({
      mapping = {
        ["<CR>"] = cmp.mapping(function(fallback)
          if cmp.visible() and cmp.get_selected_entry() then
            cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
          else
            fallback()
          end
        end, { "i", "s" }),
      },
    })
  end,
})

return {}
