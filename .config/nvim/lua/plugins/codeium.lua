require("codeium").setup({
	enable_cmp_source = true,
	enable_chat = true,
	enable_tab_completion = false,
	virtual_text = {
		enabled = true,
		key_bindings = {
			accept = "<C-l>",
			next = "<C-j>",
			prev = "<C-k>",
		},
	},
})

