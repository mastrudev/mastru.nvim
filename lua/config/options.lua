local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Mouse
opt.mouse = "a"

-- Indentation
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true

-- Searching
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- UI
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Don't wrap source code
opt.wrap = false

-- Persistent undo
opt.undofile = true

-- Faster interaction
opt.updatetime = 250

-- Completion popup
opt.completeopt = {
    "menu",
    "popup",
    "fuzzy",
    "noselect",
}

-- Nice popup borders in Neovim 0.12
opt.pumborder = "rounded"

-- Global floating window border
opt.winborder = "rounded"


