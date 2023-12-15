local builtin = require('telescope.builtin')
local set = vim.keymap.set
set('n', '<leader>p', builtin.find_files, {})
set('n', '<leader>P', builtin.live_grep, {})
