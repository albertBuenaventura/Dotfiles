local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
  use {'goolord/alpha-nvim',requires = { 'kyazdani42/nvim-web-devicons' }, config = function () require'alpha'.setup(require'alpha.themes.startify'.config) end}
  use { 'ibhagwan/fzf-lua', requires = { 'kyazdani42/nvim-web-devicons' }}  

  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- git
  use {
    'f-person/git-blame.nvim'
  }

  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  use { 'kdheepak/lazygit.nvim' }

  -- use({
  --   "glepnir/lspsaga.nvim",
  --   branch = "main",
  -- })
  
  use 'jose-elias-alvarez/null-ls.nvim'
  -- themes
  -- use 'folke/tokyonight.nvim'
  -- use 'sainnhe/sonokai'
  use {
	"catppuccin/nvim",
	as = "catppuccin",
	config = function()
		require("catppuccin").setup({
        		flavour = "macchiato", -- latte, frappe, macchiato, mocha
        		transparent_background = true
      		})
	vim.api.nvim_command "colorscheme catppuccin"
	end
  }

  use 'folke/which-key.nvim'

  use 'ggandor/lightspeed.nvim'

  use "terrortylor/nvim-comment"

  
  use {
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use default
	  })
    end
  }

  use {
    "m4xshen/autoclose.nvim",
    config = function()
        require("autoclose").setup({
            -- Configuration here, or leave empty to use default
	  })
    end
  }

  -- Automatically set up your configuration after cloning packer.nvim
  --
  --
  --
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
