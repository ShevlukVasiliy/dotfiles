if vim.g.vscode then
else
	-- reload config
	vim.keymap.set("n", "<leader>sr", ":source<CR>")

	vim.keymap.set("n", "<leader>h", ":noh<CR>")
	vim.keymap.set("n", "<leader>р", ":noh<CR>")
	vim.keymap.set("n", "<leader>co", ":copen<CR>")
	vim.keymap.set("n", "<leader>cn", ":cn<CR>")
	vim.keymap.set("n", "<leader>cp", ":cp<CR>")
	vim.keymap.set("n", "<leader>cc", ":cclose<CR>")
	vim.keymap.set("n", "<leader>cf", ":caddfile %<CR>")
	vim.keymap.set("n", "<leader>q", ":q<CR>")
	vim.keymap.set("n", "<leader>й", ":q<CR>")

	vim.keymap.set("n", "<leader>oc", ":terminal opencode<CR>")

	--plugins
	vim.keymap.set("n", "<leader>e", ":Oil<CR>")

	function OpenTerminal()
		vim.cmd([[:vsplit]])
		vim.cmd([[:terminal]])
	end

	vim.keymap.set("n", "<leader>ot", OpenTerminal)

	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { silent = true })

	-- Formatting selected code / buffer
	vim.keymap.set({ "x", "n", "v" }, "<leader>f", function()
		vim.lsp.buf.format({ async = true })
	end, { silent = true })

	local opts = { silent = true, nowait = true }

	-- Source-level code actions (например: организовать импорты)
	vim.keymap.set("n", "<leader>as", function()
		vim.lsp.buf.code_action({
			context = { only = { "source" } },
		})
	end, opts)

	-- Apply the most preferred quickfix action on the current line
	vim.keymap.set("n", "<leader>fq", function()
		vim.lsp.buf.code_action({
			context = { only = { "quickfix" } },
		})
	end, opts)
end

-- for all configurations
-- moves
vim.keymap.set({ "n", "v" }, ";", ":norm $<CR>", { silent = true })
vim.keymap.set("n", "р", ":norm h<CR>", { silent = true })
vim.keymap.set("n", "[", ":norm ~<CR>", { silent = true })
vim.keymap.set("n", "о", ":norm j<CR>", { silent = true })
vim.keymap.set("n", "л", ":norm k<CR>", { silent = true })
vim.keymap.set("n", "д", ":norm l<CR>", { silent = true })
vim.keymap.set("n", "щ", ":norm o<CR>:norm i<CR>", { silent = true })
vim.keymap.set("n", "Щ", ":norm O<CR>:norm i<CR>", { silent = true })
vim.keymap.set("v", "р", "<Left>")
vim.keymap.set("v", "о", "<Down>")
vim.keymap.set("v", "л", "<Up>")
vim.keymap.set("v", "д", "<Right>")

-- edit
vim.keymap.set("n", "ф", "a")
vim.keymap.set("n", "Ф", "A")
vim.keymap.set("n", "ш", "i")
vim.keymap.set("n", "Ш", "I")
vim.keymap.set("n", "ц", ":norm w<CR>", { silent = true })
vim.keymap.set("n", "у", ":norm e<CR>", { silent = true })
vim.keymap.set("n", "и", ":norm b<CR>", { silent = true })
vim.keymap.set("n", "м", ":norm v<CR>", { silent = true })
vim.keymap.set("n", "М", ":norm <S-V><CR>", { silent = true })

vim.keymap.set("n", "<leader>w", ":update<CR>")
vim.keymap.set("n", "<leader>ц", ":update<CR>")

vim.keymap.set("n", "<leader>-", ":split<CR>")
vim.keymap.set("n", "<leader>|", ":vsplit<CR>")
vim.keymap.set("n", "<leader>/", ":vsplit<CR>")

vim.keymap.set("n", "<tab><tab>", ":tabn<CR>")
vim.keymap.set("n", "<S-tab><S-tab>", ":tabp<CR>")
vim.keymap.set("n", "<tab>t", ":tabnew<CR>:Oil<CR>")
vim.keymap.set("n", "<tab>е", ":tabnew<CR>:Oil<CR>")
