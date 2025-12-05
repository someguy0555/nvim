return {
    {
        'sindrets/diffview.nvim',
        config = function()
            vim.keymap.set('n', '<leader>dv', ':DiffviewOpen<CR>')
        end,
    },
    { 'https://github.com/tpope/vim-fugitive', },
    {
        "NeogitOrg/neogit",
        lazy = true,
        dependencies = {
            "nvim-lua/plenary.nvim",  -- required
            "sindrets/diffview.nvim", -- optional - Diff integration
            "ibhagwan/fzf-lua",       -- optional
        },
        cmd = "Neogit kind=replace",
        keys = {
            { "<leader>ng", "<cmd>Neogit kind=replace<cr>", desc = "Show Neogit UI" }
        },
    }
}
