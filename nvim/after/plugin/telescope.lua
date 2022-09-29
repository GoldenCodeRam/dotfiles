local trouble = require("trouble.providers.telescope")

require("telescope").setup {
    defaults = {
        file_ignore_patterns = { "node_modules", "build", "vendor" },
        mappings = {
            i = { ["<c-t>"] = trouble.open_with_trouble },
            n = { ["<c-t>"] = trouble.open_with_trouble },
        },
    },
}
