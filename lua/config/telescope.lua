local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
    defaults = {
        path_display = {
            "smart",
        },

        layout_config = {
            horizontal = {
                preview_width = 0.55,
            },
        },
    },

    extensions = {
        file_browser = {
            hidden = true,
            grouped = true,
            respect_gitignore = true,
        },
    },
})

telescope.load_extension("file_browser")

local map = vim.keymap.set

-- Files
map("n", "<leader>ff", builtin.find_files, {
    desc = "Find files",
})

-- Search text inside project
map("n", "<leader>fg", builtin.live_grep, {
    desc = "Live grep",
})

-- Open buffers
map("n", "<leader>fb", builtin.buffers, {
    desc = "Buffers",
})

-- Vim/Neovim help
map("n", "<leader>fh", builtin.help_tags, {
    desc = "Help",
})

-- Recent files
map("n", "<leader>fr", builtin.oldfiles, {
    desc = "Recent files",
})

-- File browser
map("n", "<leader>fe", function()
    telescope.extensions.file_browser.file_browser({
        path = "%:p:h",
        select_buffer = true,
    })
end, {
    desc = "File explorer",
})


