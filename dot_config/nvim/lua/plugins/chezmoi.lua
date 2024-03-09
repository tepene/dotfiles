-- Edit your chezmoi-managed files and automatically apply.
-- https://github.com/xvzc/chezmoi.nvim
return {
  "xvzc/chezmoi.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("chezmoi").setup {
      telescope = {
        select = { "<SC>" },
      },
    }
  end,
}
