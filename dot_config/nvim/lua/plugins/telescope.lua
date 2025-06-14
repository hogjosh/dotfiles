-- the finder thing
-- https://github.com/nvim-telescope/telescope.nvim
return {
  "nvim-telescope/telescope.nvim",
  enabled = false,
  keys = function()
    local builtin = require("telescope.builtin")

    return {
      {
        "<leader>ff",
        function()
          return builtin.find_files { hidden = true }
        end,
        mode = { "n" },
      },
      {
        "<leader>fg",
        function()
          return builtin.live_grep {}
        end,
        mode = { "n" },
      },
      {
        "<leader>fb",
        function()
          return builtin.buffers { sort_mru = true }
        end,
        mode = { "n" },
      }
    }
  end,
}
