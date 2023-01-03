-- lspconfig 
require("nvim-lsp-installer").setup{
	virtual_text = true;
}

-- lspconfig 
local nvim_lsp = require('lspconfig')
local servers = {'jedi_language_server', 'sumneko_lua'}

-- add to setup
local capabilities = require("cmp_nvim_lsp").default_capabilities()

for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup{
		capabilities = capabilities
	}
end

vim.o.completeopt = "menu,menuone,noselect"


