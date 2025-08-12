-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.autocmds")
require("config.avante_colors")

--CR config
vim.api.nvim_create_autocmd({ "InsertLeave", "CmdlineLeave" }, {
  callback = function()
    local cmp = require("cmp")
    if cmp.visible() then
      cmp.close()
    end
  end,
})
