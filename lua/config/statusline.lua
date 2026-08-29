require("lualine").setup({
    options = {
        theme = "auto",

        icons_enabled = true,

        component_separators = {
            left = "│",
            right = "│",
        },

        section_separators = {
            left = "",
            right = "",
        },

        globalstatus = true,

        disabled_filetypes = {
            statusline = {
                "TelescopePrompt",
            },
        },
    },

    sections = {
        lualine_a = {
            {
                "mode",
                fmt = function(mode)
                    return mode
                end,
            },
        },

        lualine_b = {
            {
                "branch",
                icon = "",
            },

            {
                "diff",

                symbols = {
                    added = " ",
                    modified = " ",
                    removed = " ",
                },
            },
        },

        lualine_c = {
            {
                "filename",

                path = 1,

                symbols = {
                    modified = " ●",
                    readonly = " ",
                    unnamed = "[No Name]",
                    newfile = " ",
                },
            },
        },

        lualine_x = {
            {
                "diagnostics",

                sources = {
                    "nvim_diagnostic",
                },

                symbols = {
                    error = " ",
                    warn = " ",
                    info = " ",
                    hint = "󰌵 ",
                },
            },

            "encoding",
            "fileformat",
        },

        lualine_y = {
            {
                "filetype",
                icons_enabled = true,
            },
        },

        lualine_z = {
            "location",
            "progress",
        },
    },

    inactive_sections = {
        lualine_a = {},
        lualine_b = {},

        lualine_c = {
            {
                "filename",
                path = 1,
            },
        },

        lualine_x = {
            "location",
        },

        lualine_y = {},
        lualine_z = {},
    },
})


