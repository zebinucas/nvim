require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
	-- 确保安装，根据需要填写
	ensure_installed = {
		"lua_ls",
		"rust_analyzer",
		"clangd",
	},
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({
	capabilities = capabilities,
	filetypes = { "lua" },
})
-- windows下找不到头文件需要修改nvim-data的mason中clanged.cmd中指定clangd.exe的路径为系统中使用的clangd路径
lspconfig.clangd.setup({
	capabilities = capabilities,
	filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
})
-- rust的lsp配置见rust_tools
