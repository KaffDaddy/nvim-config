return {
  "nvimtools/none-ls.nvim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "jay-babu/mason-null-ls.nvim",
  },
  config = function()
    local mason_null_ls = require("mason-null-ls")

    local null_ls = require("null-ls")

    local null_ls_utils = require("null-ls.utils")

    mason_null_ls.setup({
      ensure_installed = {
        "prettier",
        "stylua",
        "eslint_d",
        "phpcs",
        "phpmd",
        "phpstan",
        "phpcdf",
      },
    })

    -- for conciseness
    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics
    local opts = { noremap = true, silent = true }

    -- configure null_ls
    null_ls.setup({
      root_dir = null_ls_utils.root_pattern(".null-ls-root", "Makefile", ".git", "package.json"),
      sources = {
        --  to disable file types use
        --  "formatting.prettier.with({disabled_filetypes: {}})" (see null-ls docs)
        formatting.prettier.with({
          extra_filetypes = { "svelte" },
        }),
        formatting.stylua,
        formatting.phpcbf,
        diagnostics.eslint_d.with({
          condition = function(utils)
            return utils.root_has_file({ ".eslintrc.js", ".eslintrc.cjs" })
          end,
        }),
      },
      on_attach = function(current_client, bufnr)
        local function is_null_ls_formatting_enabled(buffernr)
          local file_type = vim.api.nvim_buf_get_option(buffernr, "filetype")
          local generators =
            require("null-ls.generators").get_available(file_type, require("null-ls.methods").internal.FORMATTING)
          return #generators > 0
        end

        if current_client.server_capabilities.documentFormattingProvider then
          if
            current_client.name == "null-ls" and is_null_ls_formatting_enabled(bufnr)
            or current_client.name ~= "null-ls"
          then
            vim.bo[bufnr].formatexpr = "v:lua.vim.lsp.formatexpr()"
            opts.desc = "Format code"
            vim.keymap.set("n", "<leader>gq", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", opts)
          else
            vim.bo[bufnr].formatexpr = nil
          end
        end
      end,
    })
  end,
}
