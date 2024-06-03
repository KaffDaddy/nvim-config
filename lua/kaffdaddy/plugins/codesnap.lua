return {
    "mistricky/codesnap.nvim",
    lazy = true,
    build = "make",
    opts = {
        border = "rounded",
        has_breadcrumbs = false,
        has_linenumbers = false,
        bg_theme = "sea",
        watermark = "",
        save_path = "~/Downloads",
        mac_window_bar = false
    },
    keys = {
        { "<leader>cc", "<cmd>CodeSnap<cr>", mode = "x", desc = "Save selected code snapshot into clipboard" },
        { "<leader>cs", "<cmd>CodeSnapSave<cr>", mode = "x", desc = "Save selected code snapshot in ~/Downloads" },
    },
}
