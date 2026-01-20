vim.lsp.enable({ "pyright", "ts_ls", "lua_ls", "cssls", "cssmodules_ls", "css_variables", "html" })

local keyset = vim.keymap.set

require("conform").setup({
	formatters_by_ft = {
		javascript = { "prettier" },
		javascriptreact = { "prettier" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		json = { "prettier" },
		css = { "prettier" },
		html = { "prettier" },
		markdown = { "prettier" },
	},
	format_on_save = {
		timeout_ms = 2000,
		lsp_fallback = false,
	},
})

-- Отключаем форматирование у tsserver
-- vim.lsp.config.ts_ls.setup({
--   on_attach = function(client)
--     client.server_capabilities.documentFormattingProvider = false
--     client.server_capabilities.documentRangeFormattingProvider = false
--   end,
-- })

vim.lsp.config.ts_ls = {
	on_attach = function(client)
		-- отключаем встроенное форматирование
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentRangeFormattingProvider = false
	end,
}

-- Горячая клавиша для форматирования через Prettier
vim.keymap.set("n", "<leader>F", function()
	vim.lsp.buf.format({ async = true })
end, { silent = true })

-- Symbol renaming
keyset("n", "<leader>rn", vim.lsp.buf.rename, { silent = true })

local opts = { silent = true, nowait = true }

-- Code actions
keyset("x", "<leader>a", vim.lsp.buf.code_action, opts)
keyset("n", "<leader>a", vim.lsp.buf.code_action, opts)

-- Apply quick code actions at cursor
keyset("n", "<leader>ac", vim.lsp.buf.code_action, opts)

-- Source-level code actions (например: организовать импорты)
keyset("n", "<leader>as", function()
	vim.lsp.buf.code_action({
		context = { only = { "source" } },
	})
end, opts)

-- Apply the most preferred quickfix action on the current line
keyset("n", "<leader>fq", function()
	vim.lsp.buf.code_action({
		context = { only = { "quickfix" } },
	})
end, opts)

-- Refactor code actions
keyset("n", "<leader>re", function()
	vim.lsp.buf.code_action({
		context = { only = { "refactor" } },
	})
end, { silent = true })

keyset("x", "<leader>r", function()
	vim.lsp.buf.code_action({
		context = { only = { "refactor" } },
	})
end, { silent = true })

keyset("n", "<leader>r", function()
	vim.lsp.buf.code_action({
		context = { only = { "refactor" } },
	})
end, { silent = true })

-- Run CodeLens for current line / buffer
keyset("n", "<leader>cl", vim.lsp.codelens.run, opts)
