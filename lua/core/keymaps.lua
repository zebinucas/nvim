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
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口
keymap.set("n", "<C-l>", "<C-w>l") -- 水平切换窗口
keymap.set("n", "<C-h>", "<C-w>h") -- 水平切换窗口
keymap.set("n", "<C-j>", "<C-w>j") -- 垂直切换窗口
keymap.set("n", "<C-k>", "<C-w>k") -- 垂直切换窗口
-- 打开命令行 windows 配置到默认打开pwsh
keymap.set("n", "<leader>t", ":ter pwsh<ENTER>")

-- 搜索后取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")
