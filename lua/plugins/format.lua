local status, formatter = pcall(require, "formatter")
if not status then
	vim.notify("formatter not found")
	return
end

formatter.setup({
	filetype = {
		lua = {
			function()
				return {
					exe = "stylua",
					args = {
						"-",
					},
					stdin = true,
				}
			end,
		},
	},
})

-- format on save
vim.api.nvim_exec(
	[[
    augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost *.lua FormatWrite
    augroup END
]],
	true
)

vim.keymap.set("n", "<c-F>", ":Format<CR>")
