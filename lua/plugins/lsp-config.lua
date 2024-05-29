return {
    {
        --using mason for downloading lsp
        --use Mason command to access it
        "williamboman/mason.nvim",
        lazy=false,
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy=false,
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "golangci_lint_ls","gopls", "clangd"}
            })
        end
    },

    {
        "neovim/nvim-lspconfig",
        lazy=false,
        config=function()
            ---lsp
            ---this is the lsp file we use it to add lsp server to our buffer of our respective language
            ---for now lua and go lsp are initiated
            ---setup more language for multilanguage support
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities=capabilities
            })
            lspconfig.gopls.setup({
                capabilities=capabilities
            })

        end
    }
}
