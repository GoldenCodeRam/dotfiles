return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    -- Format
    use("sbdchd/neoformat")
    use({
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    })
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end,
    })

    -- Telescope
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")

    -- Lualine
    use({
        "nvim-lualine/lualine.nvim",
        requires = {
            "kyazdani42/nvim-web-devicons",
            opt = true,
        },
    })

    -- LSP
    use({
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    })

    use("neovim/nvim-lspconfig")
    use({
        "glepnir/lspsaga.nvim",
        branch = "main",
    })
    use("onsails/lspkind.nvim")

    use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
    use("hrsh7th/nvim-cmp") -- Autocompletion plugin

    use("mfussenegger/nvim-lint")

    -- Autocompletion
    use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
    use("L3MON4D3/LuaSnip") -- Snippets plugin

    -- Colorscheme
    use("folke/tokyonight.nvim")
    use("sainnhe/everforest")
    use("kyazdani42/nvim-web-devicons")

    -- Trouble.nvim
    use({
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup({})
        end,
    })

    -- Treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
    })
end)
