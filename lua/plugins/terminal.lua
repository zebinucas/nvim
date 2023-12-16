require("toggleterm").setup{
  shade_terinamls = true,
  direction = 'float',
  open_mapping = [[<c-\>]],
  on_create = function(term)
    local shell = 'pwsh'
    term:send(shell)
    local clear = 'clear'
    term:send(clear)
  end,
}
