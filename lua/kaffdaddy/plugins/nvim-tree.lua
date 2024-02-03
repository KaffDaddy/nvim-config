return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- disable netrw at the very start of your init.lua
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- set termguicolors to enable highlight groups
    vim.opt.termguicolors = true

    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      view = {
        adaptive_size = false,
        preserve_window_proportions = true,
        width = 40,
      },
      renderer = {
        highlight_opened_files = "name",
        group_empty = false,
        symlink_destination = true,
      },
      filters = {
        dotfiles = false,
        git_ignored = false,
      },
    })

    local keymap = vim.keymap
    keymap.set("n", "<leader>eo", "<cmd>NvimTreeOpen<CR>", { desc = "Opens up file explorer" })
    keymap.set("n", "<leader>et", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
    keymap.set("n", "<leader>ecf", "<cmd>NvimTreeFindFile<CR>", { desc = "Toggle file explorer on current file" })
  end,
}
