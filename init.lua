require("config.options")
require("config.keymaps")
require("config.packages")

-- Appearance
require("config.colors")
require("config.icons")

-- Syntax
require("config.treesitter")

-- Development
require("config.telescope")
require("config.lsp")
require("config.format")

-- Markdown depends on Treesitter
require("config.markdown")
require("config.papiro")

-- UI
require("config.statusline")
require("config.noice")

