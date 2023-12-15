if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  -- windows下全屏会bug
  vim.keymap.set("n", "<leader>e", ":wa<ENTER>:exit<ENTER>")
end
