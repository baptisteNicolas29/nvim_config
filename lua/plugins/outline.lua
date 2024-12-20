return {
  "hedyhli/outline.nvim",
  config = function()
    -- example mapping to toggle outline
    -- vim.keymap.set("n", "<leader>o", "<cmd>outline<cr>", { desc = "toggle outline" })

    require("outline").setup {
      -- your setup opts here (leave empty to use defaults)
      symbols_filter = { 'string', 'variable', exclude=true },
      symbol_folding = {
        autofold_depth = 1,
        auto_unfold = {
            hovered = true,
        },
      },
    }
  end,
}
