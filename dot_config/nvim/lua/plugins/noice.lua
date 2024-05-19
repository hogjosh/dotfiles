-- Replaces UI for messages, cmdline, and popupmenu
-- https://github.com/folke/noice.nvim?tab=readme-ov-file
return {
  "folke/noice.nvim",
  enabled = true,
  opts = {
    lsp = {
      --override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    -- you can enable a preset for easier configuration
    --presets = {
    --  bottom_search = true, -- use a classic bottom cmdline for search
    --      command_pallette = true, -- positiion the cmdline and popupmenu together
    --     long_message_to_split = true, -- long messages will be sent to a split
    --    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    --   lsp_doc_boarder = false, -- add a border to hover docs and signature help
    -- },
  },
}
