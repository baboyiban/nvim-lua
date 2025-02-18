-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- cocustom settings
-- Alt로 줄이동 가능
vim.keymap.set("n", "<A-Up>", ":m .-1<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<A-Down>", ":m .+2<CR>==", { noremap = true, silent = true })
-- Alt + ↑ : 첫 줄에서는 이동하지 않음
vim.keymap.set("n", "<A-Up>", function()
  if vim.fn.line(".") > 2 then
    vim.cmd("move .-1")
    vim.cmd("normal ==")
  end
end, { noremap = true, silent = true })

-- Alt + ↓ : 마지막 줄에서는 이동하지 않음
vim.keymap.set("n", "<A-Down>", function()
  if vim.fn.line(".") < vim.fn.line("$") then
    vim.cmd("move .+2")
    vim.cmd("normal ==")
  end
end, { noremap = true, silent = true })

-- <C-a> : 전체 선택
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", { noremap = true, silent = true })
-- <C-c> : 복사
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true, silent = true })
