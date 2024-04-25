return {
  {
    "catppuccin/nvim",
    priority = 1000,
    config = function()
      local catppuccin = require("catppuccin")

      catppuccin.setup({
        flavour = "frappe"
      })

      vim.cmd([[colorscheme catppuccin]])
    end,
  }
}
