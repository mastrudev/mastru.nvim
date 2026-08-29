require("nightfox").setup({
    options = {
        transparent = false,
        terminal_colors = true,
        dim_inactive = false,
    },

    palettes = {
        nordfox = {
            -- Main editor background
            bg1 = "#1B1C1B",

            -- Darker background: statusline, floats, etc.
            bg0 = "#151615",

            -- Slightly raised surfaces
            bg2 = "#202220",
            bg3 = "#252725",
            bg4 = "#343734",

            -- Selection / popup backgrounds
            sel0 = "#2D343A",
            sel1 = "#3D5667",
        },
    },
})

vim.opt.background = "dark"
vim.cmd.colorscheme("nordfox")


