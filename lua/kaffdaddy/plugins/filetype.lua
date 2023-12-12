return {
  "nathom/filetype.nvim",
  config = function()
    local filetype = require("filetype")

    filetype.setup({
      overrides = {
        extensions = {
            html = "html",
            typoscript = "typoscript",
        }
      }
    })
  end,
}
