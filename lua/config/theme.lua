require("kanagawa").setup({
	compile = false,
	undercurl = true,
	commentStyle = { italic = true },
	keywordStyle = { italic = true },
	statementStyle = { bold = true },
	transparent = false,
	dimInactive = true,
	terminalColors = true,
	theme = "dragon",
	background = {
		dark = "dragon",
		light = "lotus",
	},
})

vim.cmd("colorscheme kanagawa")
