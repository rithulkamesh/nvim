-- Alright this is for when I complain that I don't have intellisense
return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
			build = "make install_jsregexp",
		},
		"saadparwaiz1/cmp_luasnip", -- for autocompletion
		"rafamadriz/friendly-snippets", -- useful snippets
		"onsails/lspkind.nvim", -- vs-code like pictograms
	},
	config = function()
		local cmp = require("cmp")
		local ls = require("luasnip")
		local lspkind = require("lspkind")
		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node
		local f = ls.function_node
		local fmt = require("luasnip.extras.fmt").fmt

		-- Helper functions for the header snippet
		local function get_date()
			return os.date("%Y-%m-%d")
		end

		local function get_year()
			return os.date("%Y")
		end

		local function get_file_path()
			local file_path = vim.fn.expand("%:p")

			local git_root = vim.fn
				.system("git -C " .. vim.fn.escape(vim.fn.expand("%:p:h"), " ") .. " rev-parse --show-toplevel 2>/dev/null")
				:gsub("\n", "")

			if git_root ~= "" then
				local relative_path = file_path:sub(#git_root + 2)
				return relative_path
			end

			return vim.fn.expand("%:t")
		end

		local function get_filename()
			return vim.fn.expand("%:t")
		end

		-- Add custom snippets
		ls.add_snippets("cpp", {
			s(
				"header",
				fmt(
					[[
/**
 * ============================================================================
 * @file    {}/{}
 * @brief   {}
 *
 * @details {}
 *
 * @author  Rithul Kamesh <hi@rithul.dev>
 * @date    {}
 *
 * @copyright Copyright (c) {}-Present Rithul Kamesh <hi@rithul.dev>
 * @license Proprietary
 *
 * @project {}
 *
 * @dependencies
 * {}
 *
 * @notes
 * {}
 *
 * ============================================================================
 */

]],
					{
						f(function()
							return vim.fn.fnamemodify(get_file_path(), ":h")
						end), -- Directory
						f(get_filename), -- Filename
						i(1, ""), -- Brief description
						i(2, ""), -- Detailed description
						f(get_date), -- Current date
						f(get_year), -- Current year
						i(3, ""), -- Project name
						i(4, ""), -- Dependencies
						i(5, ""), -- Notes
					}
				)
			),
		})

		-- loads vscode style snippets from installed plugins
		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			completion = {
				completeopt = "menu,menuone,preview,noselect",
			},
			snippet = {
				expand = function(args)
					ls.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
				["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
				["<C-e>"] = cmp.mapping.abort(), -- close completion window
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),
			-- sources for autocompletion
			sources = cmp.config.sources({
				{ name = "nvim_lsp" }, -- LSP server
				{ name = "luasnip" }, -- snippets
				{ name = "buffer" }, -- text within current buffer
				{ name = "path" }, -- file system paths
			}),

			-- configure lspkind for vs-code like pictograms in completion menu
			formatting = {
				format = lspkind.cmp_format({
					maxwidth = 50,
					ellipsis_char = "...",
				}),
			},
		})
	end,
}
