require("papiro").setup({
  mode = "buffer",       -- reserved default for integrations
  theme = "adaptive",    -- "adaptive" or "novadust"
  padding = 4,
  conceal = true,
  mappings = true,
  float = {
    width = 0.82,
    height = 0.82,
    border = "rounded",
  },
  float_keymap = "<leader>mp",
})

