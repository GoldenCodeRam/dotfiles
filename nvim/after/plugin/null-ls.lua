local null_ls = require("null-ls")

local sources = {
    null_ls.builtins.completion.luasnip,

    -- Formatting
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.prettier,

    --- Go
    null_ls.builtins.formatting.gofumpt,
    null_ls.builtins.formatting.goimports,
    null_ls.builtins.formatting.goimports_reviser,
    null_ls.builtins.formatting.golines,
}

null_ls.setup({ sources = sources })
