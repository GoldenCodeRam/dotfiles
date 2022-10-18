vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use {
	"nvim-lualine/lualine.nvim",
	config = require("lualine").setup {
	    options = {
		theme = "everforest"
	    },
	},
	requires =  {
	    "kyazdani42/nvim-web-devicons",
	    opt = true
    	},
    }

    use "wbthomason/packer.nvim"
    use "neovim/nvim-lspconfig"

    use {
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim"
    }
    use "kyazdani42/nvim-web-devicons"

    use {
        "folke/trouble.nvim",
	requires = "kyazdani42/nvim-web-devicons",
	config = function()
	    require("trouble").setup {}
	end
    }

    use {
	"nvim-treesitter/nvim-treesitter",
	run = function() require("nvim-treesitter.install").update({ with_sync = true }) end,
    }

    use {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	requires = { { "nvim-lua/plenary.nvim" } }
    }
    use "nvim-lua/plenary.nvim"
end)
