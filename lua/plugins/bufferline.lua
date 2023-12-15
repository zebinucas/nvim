vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
        -- 使用 nvim 内置lsp
        diagnostics = "nvim_lsp",
        -- 左侧让出 nvim-tree 的位置
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
    }
}
-- 下一个标签页
vim.keymap.set("n", "<leader>h", ":BufferLineCycleNext<ENTER>")
-- 上一个标签页
vim.keymap.set("n", "<leader>l", ":BufferLineCyclePrev<ENTER>")
