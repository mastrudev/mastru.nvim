-- Enable language servers.

vim.lsp.enable({
    "clangd",
    "pyright",
    "ruff",
    "ts_ls",
    "html",
    "cssls",
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local bufnr = args.buf
        local client = vim.lsp.get_client_by_id(args.data.client_id)

        if not client then
            return
        end

        -- Native Neovim completion
        vim.lsp.completion.enable(
            true,
            client.id,
            bufnr,
            {
                autotrigger = true,
            }
        )

        local map = function(lhs, rhs, desc)
            vim.keymap.set(
                "n",
                lhs,
                rhs,
                {
                    buffer = bufnr,
                    desc = desc,
                }
            )
        end

        local builtin = require("telescope.builtin")

        map("gd", vim.lsp.buf.definition, "Definition")
        map("gD", vim.lsp.buf.declaration, "Declaration")
        map("K", vim.lsp.buf.hover, "Documentation")

        map("gr", builtin.lsp_references, "References")
        map("gi", builtin.lsp_implementations, "Implementations")

        map("<leader>rn", vim.lsp.buf.rename, "Rename")
        map("<leader>ca", vim.lsp.buf.code_action, "Code action")

        map(
            "<leader>ds",
            builtin.lsp_document_symbols,
            "Document symbols"
        )

        map(
            "<leader>ws",
            builtin.lsp_dynamic_workspace_symbols,
            "Workspace symbols"
        )
    end,
})


