return {
  "nathom/filetype.nvim",
  config = function()
    local filetype = require("filetype")

    filetype.setup({
      overrides = {
        extensions = {
            typoscript = "typoscript",
        }
      }
    })
  end,
}
