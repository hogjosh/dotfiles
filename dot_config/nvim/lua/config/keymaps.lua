-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local keymap = vim.keymap -- conciseness

-- In visual mode, move lines up/down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- Maintain cursor position when appending to previous line
keymap.set("n", "J", "mzJ`z")

-- Maintain cursor position on half page up/down
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Maintain cursor position on next/prev search
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Maintain copied value on paste
keymap.set("x", "<leader>p", '"_dP')
keymap.set("n", "<leader>d", '"_d')
keymap.set("v", "<leader>d", '"_d')

-- Yank into system clipboard
keymap.set("n", "<leader>y", '"+y')
keymap.set("v", "<leader>y", '"+y')
keymap.set("n", "<leader>Y", '"+Y')

-- Disable capital Q (?)
keymap.set("n", "Q", "<nop>")

-- Not sure about this one
-- New tmux session?
-- keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Format entire buffer
keymap.set("n", "<leader>=", function()
  vim.lsp.buf.format()
end)

-- Not sure about these
-- keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replace word under cursor
-- keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Not sure about this one
-- Make file executable
--keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Copy deleted char to void register
keymap.set("n", "x", '"_x')

-- clear search highlight on enter
--keymap.set("n", "<CR>", ":noh<CR>")

-- buffer management
keymap.set("n", "<C-TAB>", ":bprevious<CR>")
keymap.set("n", "<C-S-TAB>", ":bnext<CR>")

-- Split management
-- I don't know if I can unlearn the originals :)
keymap.set("n", "<leader>sv", "<C-w>v") -- vertical split
keymap.set("n", "<leader>ss", "<C-w>s") -- horizontal split
keymap.set("n", "<leader>s=", "<C-w>=") -- equalize split height/width
keymap.set("n", "<leader>sw", "<C-w>q") -- close split

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- Tab management
-- I don't know if I'll use these...
keymap.set("n", "<leader>tn", ":tabnew<CR>") -- new tab
keymap.set("n", "<leader>tw", ":tabclose<CR>") -- close tab
keymap.set("n", "<leader>tl", ":tabn<CR>") -- next tab
keymap.set("n", "<leader>th", ":tabp<CR>") -- prev tab

-- nvim-tree
keymap.set("n", "<leader>e", ":Neotree focus<CR>")
keymap.set("n", "<leader>E", ":Neotree toggle<CR>")
