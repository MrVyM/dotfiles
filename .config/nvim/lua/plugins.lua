
require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'tpope/vim-fugitive'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use "neovim/nvim-lspconfig"
    use "hrsh7th/cmp-nvim-lsp" 

    use {
        "williamboman/mason.nvim"
    }

    use "williamboman/mason-lspconfig.nvim"

    use 'BurntSushi/ripgrep'

    use 'hrsh7th/nvim-compe' 
    use 'hrsh7th/nvim-cmp' 

    use 'sharkdp/fd' 

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    
    use 'navarasu/onedark.nvim'

    use 'ray-x/aurora'
end)

