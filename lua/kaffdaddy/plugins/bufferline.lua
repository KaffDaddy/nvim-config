return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    highlights = {
      buffer_selected = { bold = true },
      diagnostic_selected = { bold = true },
      info_selected = { bold = true },
      info_diagnostic_selected = { bold = true },
      warning_selected = { bold = true },
      warning_diagnostic_selected = { bold = true },
      error_selected = { bold = true },
      error_diagnostic_selected = { bold = true },
    },
    options = {
      mode = "tabs",
      diagnostics = "nvim_lsp",
      max_prefix_length = 8,
      separator_style = "slant",
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          text_align = "left",
          separator = true,
        },
      },
    },
  },
}
