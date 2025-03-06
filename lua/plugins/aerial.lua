return {
  'stevearc/aerial.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = {
     "nvim-treesitter/nvim-treesitter",
     "nvim-tree/nvim-web-devicons"
  },

  config = function()
    -- example mapping to toggle outline
    -- vim.keymap.set("n", "<leader>o", "<cmd>outline<cr>", { desc = "toggle outline" })

    require("aerial").setup {
      -- your setup opts here (leave empty to use defaults)
      manage_folds = true,
    }
  end,
  -- You probably also want to set a keymap to toggle aerial
  -- vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
}
