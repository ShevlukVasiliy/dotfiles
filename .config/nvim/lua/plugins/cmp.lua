local cmp = require("cmp")

cmp.setup({
	completion = {
		autocomplete = false,
	},
	sources = cmp.config.sources({
        { name = "nvim_lsp", priority = 1000 },
        { name = "codeium",  priority = 10000 },
        { name = "path",     priority = 50 },
        { name = "buffer",   priority = 10 },
	}),

	mapping = cmp.mapping.preset.insert({
		["<C-x><C-o>"] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_next_item()
			else
				cmp.complete()
			end
		end, { "i", "s" }),

		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),

		["<Tab>"] = cmp.mapping.select_next_item(),
		["<S-Tab>"] = cmp.mapping.select_prev_item(),
	}),
})

local lspconfig = require('lspconfig')
local cmp_lsp = require('cmp_nvim_lsp')

local capabilities = cmp_lsp.default_capabilities()

lspconfig.util.default_config = vim.tbl_deep_extend("force", lspconfig.util.default_config, {
  capabilities = capabilities,
})
