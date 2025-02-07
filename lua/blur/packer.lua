vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
	-- Packer can manage itself
	use "wbthomason/packer.nvim"

	use {
		"nvim-telescope/telescope.nvim", tag = '0.1.8',
		-- or                            , branch = "0.1.x",
		requires = { {"nvim-lua/plenary.nvim"} }
	}

	use ({
		"sainnhe/gruvbox-material",
		--"sainnhe/everforest",
		opts = {
			-- custom options here
		},
		config = function()
            vim.o.background = "light"
            vim.g.gruvbox_material_background = "hard"
            vim.g.gruvbox_material_foreground = "mix" 
            vim.g.gruvbox_material_enable_italic = 1
            vim.g.gruvbox_material_enable_bold = 1
            vim.g.gruvbox_show_eob = 1
            vim.g.gruvbox_material_dim_inactive_windows = 1
            vim.g.gruvbox_material_diagnostic_text_highlight = 1
            vim.g.gruvbox_material_diagnostic_line_highlight = 1
            vim.g.gruvbox_material_diagnostic_virtual_text = "highlighted"
            
            vim.g.everforest_background = "hard"
            vim.g.everforest_enable_italic = 1
            vim.g.everforest_enable_bold = 1
            vim.g.everforest_dim_inactive_windows = 1
            vim.g.everforest_diagnostic_text_highlight = 1
            vim.g.everforest_diagnostic_line_highlight = 1
            vim.g.everforest_diagnostic_virtual_text = "highlighted"
            vim.g.everforest_ui_contrast = "high"
   
			vim.cmd("colorscheme gruvbox-material")
			--vim.cmd("colorscheme everforest")
		end
	})

    -- Essentials
    use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
    use "christoomey/vim-tmux-navigator"
	use "theprimeagen/harpoon"
	use "mbbill/undotree"
	use "tpope/vim-fugitive"

    -- LSP
	use ({"VonHeikemen/lsp-zero.nvim", branch = "v4.x"})
    use "neovim/nvim-lspconfig"
    use "hrsh7th/nvim-cmp"
    use "L3MON4D3/LuaSnip"
    use "hrsh7th/cmp-nvim-lsp"	
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-nvim-lua"
    use "hrsh7th/cmp-path"
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "saadparwaiz1/cmp_luasnip"
    use "rafamadriz/friendly-snippets"
    use "Glench/Vim-Jinja2-Syntax"

    -- Formatting
	use "m4xshen/autoclose.nvim"
    use "rhysd/vim-clang-format"
    use "windwp/nvim-ts-autotag"
end)
