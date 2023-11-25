local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

keymap.set('n', 'dw', 'vb_d')

keymap.set('n', '<C-a>', 'gg<S-v>G')

keymap.set('n', ';f', ':FzfLua files<CR>')

keymap.set('n', 'sf', ':Fern . -reveal=%<CR>')
