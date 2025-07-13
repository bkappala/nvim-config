local keymap = vim.keymap.set
local opts = { silent = true, noremap = true }
local function t(name)
	return function() require("telescope.builtin")[name]() end
end


-- Telescope 
keymap("n", "<leader>ff", t("find_files"), { desc = "Find files" })
keymap("n", "<leader>fg", t("live_grep"), { desc = "Live grep" })
keymap("n", "<leader>fb", t("buffers"), { desc = "Buffers" })
keymap("n", "<leader>fh", t("help_tags"), { desc = "Help tags" })

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Test keybind
--
keymap("n", "<leader>sv", "<C-w>v", {desc = "Vertical split"})
keymap("n", "<leader>sh", "<C-w>s", {desc = "Horizontal split"})
keymap("n", "<leader>se", "<C-w>=", {desc = "Equalize split"})
keymap("n", "<leader>sx", "<C-w>o", {desc = "Close other splits"})



