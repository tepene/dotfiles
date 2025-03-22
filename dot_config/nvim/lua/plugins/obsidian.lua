-- https://github.com/epwalsh/obsidian.nvim
return {
  --"epwalsh/obsidian.nvim",
  "obsidian-nvim/obsidian.nvim", -- using the fork for now
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>of", "<cmd>ObsidianFollowLink<cr>", desc = "[O]sidian [F]follow" },
    { "<leader>oc", "<cmd>ObsidianToggleCheckbox<cr>", desc = "[O]sidian [C]heckbox Toggle" },
    { "<leader>oti", "<cmd>ObsidianTemplate<cr>", desc = "[O]sidian [T]emplate [I]nsert" },
    { "<leader>onb", "<cmd>ObsidianNew<cr>", desc = "[O]sidian [N]ew [B]lank" },
    { "<leader>ont", "<cmd>ObsidianNewFromTemplate<cr>", desc = "[O]sidian [N]ew from [T]emplate" },
  },
  opts = {
    workspaces = {
      {
        name = "MindScape",
        path = "~/Obsidian/MindScape",
      },
    },
    picker = {
      -- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', or 'mini.pick'.
      name = "fzf-lua",
    },
    templates = {
      folder = "Templates",
      date_format = "%Y-%m-%d-%a",
      time_format = "%H:%M",
    },
    daily_notes = {
      -- Optional, if you keep daily notes in a separate directory.
      folder = "0. Journal",
      -- Optional, if you want to change the date format for the ID of daily notes.
      date_format = "%Y-%m-%d",
      -- Optional, if you want to change the date format of the default alias of daily notes.
      alias_format = "%B %-d, %Y",
      -- Optional, default tags to add to each new daily note created.
      default_tags = { "daily-notes" },
      -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
      template = "Templates/Timesheet",
    },
    -- Optional, completion of wiki links, local markdown links, and tags using nvim-cmp.
    completion = {
      -- Enables completion using nvim_cmp
      nvim_cmp = false,
      -- Enables completion using blink.cmp
      blink = true,
      -- Trigger completion at 2 chars.
      min_chars = 2,
    },
  },
}
