return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        vim.opt.conceallevel = 2

        require("obsidian").setup({
            workspaces = {
                {
                    name = "personal",
                    path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Privat",
                },
                {
                    name = "work",
                    path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Thoughts",
                },
            },

        })
    end
}
