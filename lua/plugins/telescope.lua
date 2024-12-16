return {
    'nvim-telescope/telescope.nvim', tag='0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        builtin = require("telescope.builtin")
        require("telescope").setup({
            defaults = {
                riggrep_arguments = {
                  'rg',
                  '--hidden',
                  '--no-heading',
                  '--with-filename',
                  '--line-number',
                  '--column',
                  '--smart-case'
                },
                file_ignore_patterns = {".git", ".venv", "__pycache__"}
            }
        })
        vim.keymap.set("n", '<leader>ff', builtin.find_files, {})
        vim.keymap.set("n", '<leader>fg', builtin.live_grep, {})
        vim.keymap.set("n", '<leader>fb', builtin.buffers, {})
        vim.keymap.set("n", '<leader>gb', builtin.git_branches, {})
        vim.keymap.set("n", '<leader>gs', builtin.git_status, {})
        vim.keymap.set("n", '<leader>gS', builtin.git_stash, {})
        vim.keymap.set("n", '<leader>gc', builtin.git_commits, {})
    end
}
