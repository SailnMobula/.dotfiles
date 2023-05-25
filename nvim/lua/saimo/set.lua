vim.g.mapleader          = " "
vim.g.copilot_filetypes  = { markdown = true }
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors    = true

vim.opt.nu               = true
vim.opt.relativenumber   = true

vim.opt.tabstop          = 4
vim.opt.softtabstop      = 4
vim.opt.shiftwidth       = 4
vim.opt.expandtab        = true

vim.opt.smartindent      = true

vim.opt.updatetime       = 50

-- Set completeopt to have a better completion experience
vim.o.completeopt        = 'menuone,noselect'
