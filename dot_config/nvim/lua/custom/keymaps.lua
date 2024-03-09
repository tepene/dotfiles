-- Netrw - vim's builtin file explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "Open file [e]xplorer (NETRW)" })

-- Select text
vim.keymap.set({ "n", "v" }, "<leader>ha", "ggVG", { desc = "[h]ighlight [a]ll" })

-- Move text
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected block [K]up" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected block [J]down" })
