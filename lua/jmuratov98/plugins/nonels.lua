return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- Lua
                null_ls.builtins.formatting.stylua,

                -- JavaScript/TypeScript
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.diagnostics.eslint_d,

                -- C/C++
                null_ls.builtins.formatting.clang_format
            },
        })
        
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
