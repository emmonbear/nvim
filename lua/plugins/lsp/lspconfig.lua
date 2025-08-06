return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp", -- для автодополнения
    },

    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local capabilities = cmp_nvim_lsp.default_capabilities()



        lspconfig.lua_ls.setup({
            capabilities = capabilities,
            settings = {
                Lua = {
                    format = {
                        enable = true,
                    },
                },
            },
            on_attach = function(client, bufnr)
                if client.server_capabilities.documentFormattingProvider then
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        buffer = bufnr,
                        callback = function() vim.lsp.buf.format({ async = false }) end,
                    })
                end
            end,
        })

        lspconfig.marksman.setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        lspconfig.sqls.setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
    end,
}
