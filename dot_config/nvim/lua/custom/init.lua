-- [[ Setting options ]]
require("custom.options")

-- [[ Keymaps ]]
require("custom.keymaps")

-- [[ Chezmoi ]]status
-- automatically apply changes on files under chezmoi source path
--  e.g. ~/.local/share/chezmoi/*
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = { os.getenv("HOME") .. "/.local/share/chezmoi/*" },
	callback = function()
		vim.schedule(require("chezmoi.commands.__edit").watch)
	end,
})

-- [[ VSCode specific settings ]]
if vim.g.vscode then
	require("custom.vscode")
end
