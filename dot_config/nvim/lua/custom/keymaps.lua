-- Netrw - vim's builtin file explorer
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex, { desc = "Open file [ex]plorer (NETRW)" })

-- Split windows
vim.keymap.set("n", "<leader>th", ":split<CR>", { desc = "Split [t]ab [h]orizontally" })
vim.keymap.set("n", "<leader>tv", ":vsplit<CR>", { desc = "Split [t]ab [v]ertically" })

-- Select text
vim.keymap.set({ "n", "v" }, "<leader>ha", "ggVG", { desc = "[h]ighlight [a]ll" })

-- Move text
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected block [K]up" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected block [J]down" })
