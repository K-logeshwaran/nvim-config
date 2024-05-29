return {
    {
        --using mason for downloading lsp
        --use Mason command to access it
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "golangci_lint_ls","gopls", "clangd"}
            })
        end 
    },
    
    {
        "neovim/nvim-lspconfig",
        config=function()
            ---lsp
            ---this is the lsp file we use it to add lsp server to our buffer of our respective language
            ---for now lua and go lsp are initiated
            ---setup more language for multilanguage support
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.gopls.setup({})

        end
    }
}
