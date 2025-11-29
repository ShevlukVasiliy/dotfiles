require("codecompanion").setup({
	strategies = {
		chat = {
			adapter = {
				name = "ollama",
				model = "qwen2.5-coder:7b",
			},
		},
		inline = {
			adapter = {
				name = "ollama",
				model = "qwen2.5-coder:7b",
			},
		},
		cmd = {
			adapter = {
				name = "ollama",
				model = "qwen2.5-coder:7b",
			},
		}
	},
})
