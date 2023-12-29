return {
  "NvChad/nvim-colorizer.lua",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
   local colorizer = require('colorizer')

    colorizer.setup({
      filetypes = {
        'css',
        'scss',
        'javascript',
        html = { mode = 'foreground' }
      },
      user_default_options = {
        names = false,
        rgb_fn = true,
        hsl_fn = true,
      }
    })
  end,
}
