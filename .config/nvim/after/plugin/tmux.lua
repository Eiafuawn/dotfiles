local tmux_nvim = require("nvim-tmux-navigation")

tmux_nvim.setup({
  disable_when_zoomed = true       -- defaults to false
})

vim.keymap.set('n', "<C-h>", tmux_nvim.NvimTmuxNavigateLeft)
vim.keymap.set('n', "<C-j>", tmux_nvim.NvimTmuxNavigateDown)
vim.keymap.set('n', "<C-k>", tmux_nvim.NvimTmuxNavigateUp)
vim.keymap.set('n', "<C-l>", tmux_nvim.NvimTmuxNavigateRight)
vim.keymap.set('n', "<C-\\>", tmux_nvim.NvimTmuxNavigateLastActive)
vim.keymap.set('n', "<C-W>", tmux_nvim.NvimTmuxNavigateNext)
