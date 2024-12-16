-- numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- tabulation
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting

vim.g.mapleader = " "

-- syntaxe
vim.o.syntax = true

-- setup fillchars
vim.opt.fillchars = {
    eob = " "
}
