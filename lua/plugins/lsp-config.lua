return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        PATH = "prepend", -- "skip" seems to cause the spawning error
      })
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "pylsp"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup {}
      lspconfig.pylsp.setup {
        jedi_completion = {fuzzy = true}
      }
      vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>rr', vim.lsp.buf.rename, {})
      vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>la', vim.lsp.buf.code_action, {})
      -- vim.keymap.set('n', 'gi', vim.lsp.buf.references, {})
      -- vim.keymap.set('n', '<leader>ld', require('telescope.builtin').lsp_definitions, {})
      vim.keymap.set('n', '<leader>lr', require('telescope.builtin').lsp_references, {})
    end
  },
}
