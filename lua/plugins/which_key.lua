return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    -- builtin = require("telescope.builtin"),
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
    -- lsp config
    {'<leader>rr', vim.lsp.buf.rename , desc='lsp refactor'},
    {'<leader>lh', vim.lsp.buf.hover, desc='lsp hover implementation'},
    {'<leader>la', vim.lsp.buf.code_action, desc='lsp code actions', mode={'n', 'v'}},
    {'<leader>lr', require('telescope.builtin').lsp_references, desc='lsp references',},
    {'<leader>g', group='lsp', desc='lsp'},

    -- gits
    {'<leader>gb', require('telescope.builtin').git_branches, desc='view git branches',},
    {'<leader>gs', require('telescope.builtin').git_status, desc='view git status',},
    {'<leader>gS', require('telescope.builtin').git_stash, desc='view git stash',},
    {'<leader>gc', require('telescope.builtin').git_commits, desc='view git commits',},
    {'<leader>g', group='git', desc='git'},

    -- finds
    {'<leader>ff', require('telescope.builtin').find_files, desc='find files',},
    {'<leader>fg', require('telescope.builtin').live_grep, desc='live grep',},
    {'<leader>fb', require('telescope.builtin').buffers, desc='list buffers',},
    {'<leader>f', group='finds', desc='finds'},

    -- outliner
    {'<leader>a', '<cmd>AerialToggle!<CR>', desc='view outliner',},
  },
}

