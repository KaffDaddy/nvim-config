return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "windwp/nvim-ts-autotag",
    },
    config = function()
      local treesitter = require("nvim-treesitter.configs")

      treesitter.setup({
        highlight = {
          enable = true,
        },
        indent = { enable = true },
        autotag = {
          enable = true,
        },
        ensure_installed = {
          "cmake",
          "json",
          "javascript",
          "typescript",
          "yaml",
          "http",
          "html",
          "css",
          "bash",
          "lua",
          "vim",
          "dockerfile",
          "gitignore",
          "php",
          "scss",
          "sql",
          "gitattributes",
          "gitignore",
          "json",
          "json5",
          "regex",
          "typoscript",
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
          },
        },
      })
    end,
  },
}
