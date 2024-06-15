require("neorg").setup({
	load = {
		["core.defaults"] = {},
		["core.concealer"] = {},
		["core.latex.renderer"] = {
			config = {
				conceal = true,
				render_on_enter = true,
				renderer = "core.integrations.image",
			},
		},
		["core.dirman"] = {
			config = {
				workspaces = {
					notes = "~/notes",
				},
				default_workspace = "notes",
			},
		},
	},
})
