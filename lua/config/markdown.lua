
vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",

    callback = function(args)
        vim.opt_local.conceallevel = 2

        -- Better prose editing
        vim.opt_local.wrap = true
        vim.opt_local.linebreak = true
        vim.opt_local.breakindent = true
        vim.opt_local.breakindentopt = "shift:2"

    end,
})

