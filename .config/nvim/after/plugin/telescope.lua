require('telescope').load_extension 'fzf'
local wk = require('which-key')
local builtin = require('telescope.builtin')
local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup {
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-h>"] = actions.select_horizontal
      },
    },
  },
}

wk.register({
  f = {
    name = 'find',
    f = { builtin.find_files, 'Find Files' },
    b = { builtin.buffers, 'Find Buffers' },
    h = { builtin.help_tags, 'Find Help' },
    t = { builtin.tags, 'Find Tags' },
    D = { builtin.grep_string, 'Find String' },
    p = { builtin.live_grep, 'Find String in Project' },
    r = { builtin.oldfiles, 'Find Recent Files' },
    e = { '<cmd>:Oil<CR>', 'Find File Explorer' },
    c = { builtin.colorscheme, 'Find Colorscheme' },
    k = { builtin.keymaps, 'Find Keymaps' },
  },
  l = {
    name = 'lsp-telescope',
    d = { builtin.diagnostics, 'Find Document Diagnostics' },
    D = { builtin.lsp_definitions, 'Find Definition' },
    r = { builtin.lsp_references, 'Find References' },
    s = { builtin.lsp_document_symbols, 'Find Document Symbols' },
    i = { builtin.lsp_implementations, 'Find Implementations' },
    q = { builtin.quickfix, 'Find Quickfix' },
    t = { builtin.treesitter, 'Find Treesitter' },
  },
}, { prefix = '<leader>' })

vim.keymap.set('n', '<leader><space>', function() require('telescope.builtin').buffers { sort_lastused = true } end)
