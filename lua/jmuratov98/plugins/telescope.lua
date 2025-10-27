return {
    {
        "nvim-telescope/telescope-ui-select.nvim",
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        config = function()
            require("telescope").setup()
            
            local builtin = require("telescope.builtin")
            
            vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = '[F]ind [F]iles' })
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = '[F]ind Grep'})
            vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = 'Find Buffers'})
            vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "[F]ind [T]odos" })

            require("telescope").load_extension("ui-select")
        end,
  },
}
