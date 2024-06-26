local opt = vim.opt

opt.mouse = "a"

opt.number = true
opt.relativenumber = true
opt.scrolloff = 8

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.autoindent = true
opt.smartindent = true
opt.breakindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true
opt.splitkeep = "cursor"
opt.colorcolumn = "120"

opt.swapfile = false
