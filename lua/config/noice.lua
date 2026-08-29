local popup_width = 60

require("noice").setup({
    ------------------------------------------------------------
    -- Cmdline
    ------------------------------------------------------------
    cmdline = {
        enabled = true,
        view = "cmdline_popup",
    },

    ------------------------------------------------------------
    -- Command completion
    ------------------------------------------------------------
    popupmenu = {
        enabled = true,
        backend = "nui",
    },

    ------------------------------------------------------------
    -- Messages
    ------------------------------------------------------------
    messages = {
        enabled = true,
    },

    notify = {
        enabled = true,
    },

    ------------------------------------------------------------
    -- LSP
    ------------------------------------------------------------
    lsp = {
        progress = {
            enabled = true,
        },

        override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
        },

        hover = {
            enabled = true,
        },

        signature = {
            enabled = true,
        },
    },

    ------------------------------------------------------------
    -- Presets
    ------------------------------------------------------------
    presets = {
        bottom_search = false,

        -- We control the positions manually.
        command_palette = false,

        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = true,
    },

    ------------------------------------------------------------
    -- Views
    ------------------------------------------------------------
    views = {

        --------------------------------------------------------
        -- Cmdline
        --------------------------------------------------------
        cmdline_popup = {
            relative = "editor",

            position = {
                row = 2,
                col = "50%",
            },

            size = {
                width = popup_width,
                height = "auto",
            },

            border = {
                style = "rounded",
                padding = { 0, 1 },
            },

            win_options = {
                winhighlight = {
                    Normal = "NormalFloat",
                    FloatBorder = "FloatBorder",
                },
            },
        },

        --------------------------------------------------------
        -- Completion menu
        --------------------------------------------------------
        popupmenu = {
            relative = "editor",

            -- Leave space below the cmdline.
            position = {
                row = 5,
                col = "50%",
            },

            size = {
                width = popup_width,
                height = 10,
            },

            border = {
                style = "rounded",
                padding = { 0, 1 },
            },

            win_options = {
                winhighlight = {
                    Normal = "NormalFloat",
                    FloatBorder = "FloatBorder",
                    CursorLine = "PmenuSel",
                },
            },
        },
    },
})


