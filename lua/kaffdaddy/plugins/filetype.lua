return {
  "nathom/filetype.nvim",
  event = "VeryLazy",
  config = function()
    local filetype = require("filetype")

    filetype.setup({
      overrides = {
        extensions = {
            html = "html",
            tsconfig = "typoscript",
            typoscript = "typoscript",
        }
      }
    })
  end,
}
