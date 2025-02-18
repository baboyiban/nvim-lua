-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- cocustom settings
-- Alt + ↑ : 첫 줄에서는 이동하지 않음
vim.keymap.set("n", "<A-Up>", function()
  if vim.fn.line(".") > 1 then
    vim.cmd("move .-2")
    vim.cmd("normal ==")
  end
end, { noremap = true, silent = true })

-- Alt + ↓ : 마지막 줄에서는 이동하지 않음
vim.keymap.set("n", "<A-Down>", function()
  if vim.fn.line(".") < vim.fn.line("$") then
    vim.cmd("move .+1")
    vim.cmd("normal ==")
  end
end, { noremap = true, silent = true })

-- <C-a> : 전체 선택
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", { noremap = true, silent = true })
-- <C-c> : 복사
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true, silent = true })

-- Telescope
-- 🔥 Ctrl + f 로 live_grep 실행되도록 키맵 설정!
vim.keymap.set("n", "<C-f>", "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true })

-- 쉬프트 + 화살표로 선택 (드래그 기능)
vim.keymap.set("n", "<S-Up>", "v<Up>", { desc = "Select up" })
vim.keymap.set("n", "<S-Down>", "v<Down>", { desc = "Select down" })
vim.keymap.set("n", "<S-Left>", "v<Left>", { desc = "Select left" })
vim.keymap.set("n", "<S-Right>", "v<Right>", { desc = "Select right" })

-- 비주얼 모드에서도 계속 선택 확장
vim.keymap.set("v", "<S-Up>", "<Up>", { desc = "Extend selection up" })
vim.keymap.set("v", "<S-Down>", "<Down>", { desc = "Extend selection down" })
vim.keymap.set("v", "<S-Left>", "<Left>", { desc = "Extend selection left" })
vim.keymap.set("v", "<S-Right>", "<Right>", { desc = "Extend selection right" })

-- 삽입 모드에서도 선택 시작
vim.keymap.set("i", "<S-Up>", "<Esc>v<Up>", { desc = "Select up" })
vim.keymap.set("i", "<S-Down>", "<Esc>v<Down>", { desc = "Select down" })
vim.keymap.set("i", "<S-Left>", "<Esc>v<Left>", { desc = "Select left" })
vim.keymap.set("i", "<S-Right>", "<Esc>v<Right>", { desc = "Select right" })

-- 일반 방향키로 비주얼 모드 취소
vim.keymap.set("v", "<Up>", "<Esc><Up>", { desc = "Cancel selection and move up" })
vim.keymap.set("v", "<Down>", "<Esc><Down>", { desc = "Cancel selection and move down" })
vim.keymap.set("v", "<Left>", "<Esc><Left>", { desc = "Cancel selection and move left" })
vim.keymap.set("v", "<Right>", "<Esc><Right>", { desc = "Cancel selection and move right" })
