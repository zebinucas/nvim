vim.g.mapleader = " "

local keymap = vim.keymap

-- keymap语法
-- keymap.set("mode", "new option", "old option")

-- ---------- 插入模式 ---------- ---
-- 回到normal模式
keymap.set("i", "jj", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 保存并退出
keymap.set("n", "<leader>wq", ":wq<ENTER>")
-- 强制退出
keymap.set("n", "<leader>qq", ":q!<ENTER>")
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口
keymap.set("n", "<C-l>", "<C-w>l") -- 水平切换窗口
keymap.set("n", "<C-h>", "<C-w>h") -- 水平切换窗口
keymap.set("n", "<C-j>", "<C-w>j") -- 垂直切换窗口
keymap.set("n", "<C-k>", "<C-w>k") -- 垂直切换窗口

-- 设置窗口大小
keymap.set("n", "<A-Up>", ":resize -2<CR>")
keymap.set("n", "<A-Down>", ":resize +2<CR>")
keymap.set("n", "<A-Left>", ":vertical resize -2<CR>")
keymap.set("n", "<A-Right>", ":vertical resize +2<CR>")

-- 文件跳转
keymap.set("n", "<leader>[", "<C-o>") -- 跳转回跳转历史中较早的位置
keymap.set("n", "<leader>]", "<C-i>") -- 跳转回跳转历史中较晚的位置
-- 跳转到定义文件
keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
-- 浮窗定义文件
keymap.set("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>")
-- 跳转到变量声明
keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
-- 跳转到实现
keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
-- 跳转到引用
keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")

-- https://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
-- 按jk的时候使用可视行，number jk的时候使用相对行号
vim.keymap.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
vim.keymap.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })
-- 搜索后取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")
