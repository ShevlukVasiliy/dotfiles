vim.diagnostic.config({
	severity_sort = true,
	update_in_insert = true,
	float = {
		border = "rounded",
		source = "if_many",
		focusable = false,
		severity = {
			vim.diagnostic.severity.ERROR,
			vim.diagnostic.severity.WARN,
			vim.diagnostic.severity.HINT,
			vim.diagnostic.severity.INFO,
		},
	},
	underline = {
		severity = {
			vim.diagnostic.severity.ERROR,
			vim.diagnostic.severity.WARN,
			vim.diagnostic.severity.HINT,
			vim.diagnostic.severity.INFO,
		},
	},
	signs = {
		severity = {
			vim.diagnostic.severity.ERROR,
			vim.diagnostic.severity.WARN,
			vim.diagnostic.severity.INFO,
			vim.diagnostic.severity.HINT,
		},
		text = {
			[vim.diagnostic.severity.ERROR] = "e",
			[vim.diagnostic.severity.WARN] = "w",
			[vim.diagnostic.severity.INFO] = "i",
			[vim.diagnostic.severity.HINT] = "h",
		},
	},
	virtual_text = false,
	virtual_lines = {
		severity = {
			vim.diagnostic.severity.ERROR,
			vim.diagnostic.severity.WARN,
			vim.diagnostic.severity.INFO,
			vim.diagnostic.severity.HINT,
		},
	},
	jump = {
		severity = {
			vim.diagnostic.severity.ERROR,
			vim.diagnostic.severity.WARN,
			vim.diagnostic.severity.INFO,
			vim.diagnostic.severity.HINT,
		},
	},
})

-- Shift-K: показать LSP hover информацию (документацию)
vim.keymap.set("n", "<S-k>", vim.lsp.buf.hover, { desc = "LSP hover" })
