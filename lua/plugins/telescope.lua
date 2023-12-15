local builtin = require('telescope.builtin')

-- 进入telescope页面会是插入模式，回到正常模式就可以用j和k来移动了
local set = vim.keymap.set
set('n', '<leader>p', builtin.find_files, {})
set('n', '<leader>P', builtin.live_grep, {})  -- 环境里要安装ripgrep
