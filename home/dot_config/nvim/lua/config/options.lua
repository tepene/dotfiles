-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Enable fzf picker -> https://www.lazyvim.org/extras/editor/fzf#options
vim.g.lazyvim_picker = "fzf"

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = "a"

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true
