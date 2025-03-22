-- Overwrite fzf-lua
-- https://www.lazyvim.org/extras/editor/fzf#options
return {
  {
    "ibhagwan/fzf-lua",
    opts = {
      files = {
        -- Hide hidden files
        hidden = false,
      },
    },
  },
}
