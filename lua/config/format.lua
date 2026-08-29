local conform = require("conform")

conform.setup({
    formatters_by_ft = {
        c = {
            "clang_format",
        },

        cpp = {
            "clang_format",
        },

        python = {
            "ruff_format",
        },

        javascript = {
            "prettier",
        },

        javascriptreact = {
            "prettier",
        },

        typescript = {
            "prettier",
        },

        typescriptreact = {
            "prettier",
        },

        html = {
            "prettier",
        },

        css = {
            "prettier",
        },

        json = {
            "prettier",
        },
    },

    default_format_opts = {
        lsp_format = "fallback",
    },
})

vim.keymap.set("n", "<leader>f", function()
    conform.format({
        async = true,
        lsp_format = "fallback",
    })
end, {
    desc = "Format file",
})


