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
require("lazy").setup({
  -- 主题插件
	{
		"RRethy/nvim-base16",
		lazy = true,
	},
  {
    "navarasu/onedark.nvim",
    lazy = true
  },
  -- 文件搜索查找插件
  {
		cmd = "Telescope",
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
})
require("plugins/colorscheme")
require("plugins/telescope")
