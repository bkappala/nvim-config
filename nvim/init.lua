vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.o.termguicolors = true
require("config.lazy")
require("keymaps")
vim.keymap.set("n", "<leader>tt", function()
	print("leadre key e;;lksjdf;ymaps adflllle working")
end, { desc = "Test leader key" })

