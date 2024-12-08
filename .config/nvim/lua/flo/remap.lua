vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({"n","v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n","v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "<leader>tt", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>tp", function() require("trouble").previous({skip_groups = true, jump = true}) end)
vim.keymap.set("n", "<leader>tn", function() require("trouble").next({skip_groups = true, jump = true}) end)

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
