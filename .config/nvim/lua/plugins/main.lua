if vim.g.vscode then
	-- VSCode extension
else
	require("plugins.noice")
	require("plugins.treesitter")
	require("plugins.gitsigns")
	require("plugins.comment")
	require("plugins.pairs")
	-- require("plugins.lualine")
	require("plugins.codeium")
	-- require 'plugins.coc'
	require("plugins.todo")
	require("plugins.telescope")
	require("plugins.render-markdown")
	-- require("plugins.codecompanion")
	require("plugins.theme")
	require("plugins.mason")
	require("plugins.oil")
	-- require("plugins.gen")
	require("plugins.lspconfig")
	require("plugins.snacks")
	require("plugins.cmp")
end
