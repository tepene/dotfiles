-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap

-- Windows
--  delete lazyvim mappings
map.del("n", "<leader>-")
map.del("n", "<leader>|")
--  split vertical
map.set("n", "<leader>wsv", "<C-W>v", { desc = "[W]indow [S]plit [V]ertical" })
--  split orizontal
map.set("n", "<leader>wsh", "<C-W>s", { desc = "[W]indow [S]plit [H]orizontal" })
