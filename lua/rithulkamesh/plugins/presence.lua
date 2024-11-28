return {
	"andweeb/presence.nvim",
	config = function()
		require("presence").setup({
			auto_update = true,
			neovim_image_text = "github.com/rithulkamesh/nvim", -- Text displayed when hovered over the Neovim image
			main_image = "file",
			log_level = nil,
			debounce_timeout = 10,
			enable_line_number = false,
			blacklist = {},
			buttons = true,
			file_assets = {},
			show_time = true,

			editing_text = "Editing %s",
			file_explorer_text = "Browsing %s",
			git_commit_text = "Committing changes",
			line_number_text = "Line %s out of %s",
		})
	end,
}
