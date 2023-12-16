if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.keymap.set("n", "<leader>e", ":wa<ENTER>:exit<ENTER>")
  vim.o.guifont = "CodeNewRoman Nerd Font:h12" -- text below applies for VimScript
  vim.g.neovide_refresh_rate = 60
  vim.api.nvim_set_keymap('n', '<F11>', ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
  vim.g.neovide_cursor_animation_length = 0.06
end
