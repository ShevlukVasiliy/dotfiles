require("codecompanion").setup({
	strategies = {
		chat = {
			adapter = {
				name = "ollama",
				model = "llama3.1:latest",
			},
		},
		inline = {
			adapter = {
				name = "ollama",
				model = "llama3.1:latest",
			},
		},
		cmd = {
			adapter = {
				name = "ollama",
				model = "llama3.1:latest",
			},
		}
	},
})
