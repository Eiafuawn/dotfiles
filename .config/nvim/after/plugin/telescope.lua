require('telescope').load_extension 'fzf'
local wk = require('which-key')
local builtin = require('telescope.builtin')

wk.register({
  f = {
    name = 'find',
    f = { builtin.find_files, 'Find Files' },
    b = { builtin.buffers, 'Find Buffers' },
    h = { builtin.help_tags, 'Find Help' },
    t = { builtin.tags, 'Find Tags' },
    d = { builtin.grep_string, 'Find String' },
    p = { builtin.live_grep, 'Find String in Project' },
    ['?'] = { builtin.oldfiles, 'Find Recent Files' },
  }
})
