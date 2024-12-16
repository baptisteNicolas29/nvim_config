return {
    {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            require('nvim-treesitter.install').prefer_git = false
            require('nvim-treesitter.configs').setup({
                -- ensure_installed = {"c", "python", "lua", "cpp"},
                hilight = {enable=true},
            })
        end,
    },
}
