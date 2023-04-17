vim.opt.guicursor = ""
-- changes insert cursor with block cursor

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.listchars = { eol = "¬", space = "_" }
vim.opt.list = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
-- maintains tab level when on new line
vim.opt.wrap = true
vim.opt.linebreak = true
-- soft wraps text at the end of the screen without breaking words

vim.opt.smartindent = true
-- Indents newlines after { for
-- automatically indenting functions

vim.opt.hlsearch = true
-- Highlights search terms
vim.opt.incsearch = true
-- Highlights search as you type
vim.opt.showmatch = true
-- Highlights matching parantheses
vim.opt.ignorecase = true
-- Ignores case when searching
vim.opt.smartcase = true
-- Unless using a capitol

-- vim.opt.swapfile = false
-- Disables vim's vanilla undo
-- vim.opt.backup = false
-- vim.opt.undodir os.getenv("HOME") .. "/.vim/undodir"
-- vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
-- Cursor cannot go less than n lines from the bottom or top

vim.opt.updatetime = 50
-- ms that it takes for vim to save buffer

vim.opt.colorcolumn = "80"
-- visible vertical line on right
vim.g.mapleader = " "
-- Maps leader key to <space>
vim.g.python3_host_prog = "/bin/python3"
vim.g.perl_host_prog = "/usr/sbin/perl"
