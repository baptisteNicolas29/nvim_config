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
        vim.keymap.set("n", '<C-p>', builtin.find_files, {})
    end
}
