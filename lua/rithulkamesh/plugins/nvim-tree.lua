-- The most useful file explorer plugin I've ever used.
return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		vim.opt.termguicolors = true

		local function open_nvim_tree(data)
			local directory = vim.fn.isdirectory(data.file) == 1
			if not directory then
				return
			end
			vim.cmd.cd(data.file)
			require("nvim-tree.api").tree.open()
		end

		-- Create and Destroy Tree instances automatically on new window and destoy window
		vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
		vim.api.nvim_create_autocmd("QuitPre", {
			callback = function()
				local invalid_win = {}
				local wins = vim.api.nvim_list_wins()
				for _, w in ipairs(wins) do
					local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(w))
					if bufname:match("NvimTree_") ~= nil then
						table.insert(invalid_win, w)
					end
				end
				if #invalid_win == #wins - 1 then
					-- Should quit, so we close all invalid windows.
					for _, w in ipairs(invalid_win) do
						vim.api.nvim_win_close(w, true)
					end
				end
			end,
		})

		require("nvim-tree").setup({
			renderer = {
				indent_markers = {
					enable = true,
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "",
							arrow_open = "",
						},
					},
				},
			},
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})

		vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
	end,
}
