-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions

local lsp_flags = {
    -- This is the default in Nvim 0.7+
    debounce_text_changes = 150,
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local lspconfig = require("lspconfig")

require("mason").setup()
require("mason-lspconfig").setup()

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp

require("mason-lspconfig").setup_handlers({
    function(server_name)
        lspconfig[server_name].setup({
            flags = lsp_flags,
            capabilities = capabilities,
        })
    end,
})
