-- lazy.nvim
-- 安装lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- 主题
  { "navarasu/onedark.nvim", lazy = true },
  -- 文件检索
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  -- 文档树图标
  "nvim-tree/nvim-web-devicons", 
  -- 状态栏
  {
    "nvim-lualine/lualine.nvim",
    lazy = true
  },
  -- 文档树
  {
    "nvim-tree/nvim-tree.lua",
    lazy = true
  },
  -- 标签页
  {
    'akinsho/bufferline.nvim',
    lazy = true
  },
  "nvim-treesitter/nvim-treesitter", -- 语法高亮
  "p00f/nvim-ts-rainbow", -- 配合treesitter，不同括号颜色区分
  "windwp/nvim-autopairs", -- 自动补全括号
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }
}

local opts = {} -- 注意要定义这个变量
require("lazy").setup(plugins, opts)
