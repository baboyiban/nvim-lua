return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = { "node_modules", ".git/", "dist" },
      },
      pickers = {
        live_grep = {
          additional_args = function(_)
            return { "--hidden", "--smart-case" }
          end,
        },
      },
    })
    -- 🔥 Ctrl + f 로 live_grep 실행되도록 키맵 설정!
    vim.keymap.set("n", "<C-f>", "<cmd>Telescope live_grep<CR>", { silent = true })
  end,
}
