return { -- Color scheme
	"catppuccin/nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("catppuccin-macchiato")
	end,
}
