-- telescope fzf alternative
-- https://github.com/ibhagwan/fzf-lua
return {
  "ibhagwan/fzf-lua",
  enabled = true,
  keys = {
    { "<leader>fg", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" }
  }
}
