return {
	{
	  "folke/tokyonight.nvim",
	  lazy = false,
	  priority = 1000,
	  opts = {},
	},
	{ "nvim-tree/nvim-web-devicons", opts = {} },
	{"nvim-treesitter/nvim-treesitter", branch = 'main', lazy = false, build = ":TSUpdate"},
	{
	  "nvim-tree/nvim-tree.lua",
	  version = "*",
	  lazy = false,
	  dependencies = {
	    "nvim-tree/nvim-web-devicons",
	  },
	  config = function()
	    require("nvim-tree").setup {}
	  end,
	},
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                              , branch = '0.1.x',
      		dependencies = { 'nvim-lua/plenary.nvim' }
    	}
}
