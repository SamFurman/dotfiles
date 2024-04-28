local map = vim.keymap.set
map("n", "<leader>v", ":e $MYVIMRC<CR>")
map("n", "<Tab>", ":bn<CR>")
map("n", "<S-Tab>", ":bp<CR>")
map("n", "<leader>q", ":bd<CR>")
map("n", "<leader>E", ":Ex<CR>")

-- move stuff (:
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in middle on half jump
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- search terms in middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- when appending line below keep cursor at the start
vim.keymap.set("n", "J", "mzJ`z")

-- paste while preserving buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- delete while preserving buffer
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- yanking into system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- when leaving insert mode with ctrl c save changes
vim.keymap.set("i", "<C-c>", "<Esc>")

--dont quit
vim.keymap.set("n", "Q", "<nop>")

-- replace token under current cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- add executable permissions to current file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- source current file
vim.keymap.set("n", "<leader><leader>", ":so<CR>")
