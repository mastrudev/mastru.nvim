-- TreeSitter

local treesitter = require("nvim-treesitter")

-- =========================================================
-- Parsers
-- =========================================================

local parsers = {
    -- C / C++
    "c",
    "cpp",

    -- Python
    "python",

    -- Web
    "javascript",
    "typescript",
    "tsx",
    "html",
    "css",
    "json",

    -- Neovim
    "lua",
    "vim",
    "vimdoc",
    "query",

    -- Markdown
    "markdown",
    "markdown_inline",
}

treesitter.install(parsers)

-- =========================================================
-- Highlighting
-- =========================================================

local filetypes = {
    "c",
    "cpp",

    "python",

    "javascript",
    "javascriptreact",

    "typescript",
    "typescriptreact",

    "html",
    "css",
    "json",

    "lua",
    "vim",

    "markdown",
}

vim.api.nvim_create_autocmd("FileType", {
    pattern = filetypes,

    callback = function(args)
        pcall(vim.treesitter.start, args.buf)
    end,
})

