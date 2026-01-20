require("noice").setup({
	messages = {
		enabled = false,
	},

	cmdline = {
		enabled = true,
		view = "cmdline_popup",
	},

	lsp = {
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true,
		},
	},

	presets = {
		bottom_search = false,
		command_palette = false,
		long_message_to_split = false,
		inc_rename = false,
		lsp_doc_border = true,
	},
})
