return {
  {
    "catppuccin/nvim",
    priority = 1000,
    config = function()
      local catppuccin = require("catppuccin")

      catppuccin.setup({
        background = {
          light = "latte",
          dark = "macchiato",
        },
        term_colors = true,
      })

      vim.cmd([[colorscheme catppuccin]])
    end,
  }
}
