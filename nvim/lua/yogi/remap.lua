vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move Highlighted lines up and down using J an K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Takes line below the cursor & appends it to the above line
vim.keymap.set("n", "J", "mzJ`z")
-- Half page jumping Ctrl + d to jump and Ctrl + u to go back 
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Allows the serach terms to stay in the middle
vim.keymap.set("n", "n", "nzzzv")
-- Go to prev search term
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
-- Paste it like regular paste and not the vim's paste mechanic
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- Copy to the main clipboard so that this can be copied anywhere 
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
-- Ctrl + C to escape
vim.keymap.set("i", "<C-c>", "<Esc>")

-- dont press Q 
vim.keymap.set("n", "Q", "<nop>")
-- Change the session using Ctrl + f
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- Format the code using Space + f
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Space + s to replace the word that the cursor was on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- Space + x to make the file executable, i.e chmod +x 
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Space + Space to source the current file 
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
