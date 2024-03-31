return {
	"nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = {"c","norg", "lua", "vim", "vimdoc", "query", "bash" },
      highlight = { enable = true }
		})
	end
}
