return {
  'tpope/vim-fugitive',
  keys = {
    { '<leader>gs', ':Git<CR>', desc = 'Git status' },
    { '<leader>gd', ':Git diff<CR>', desc = 'Git diff' },
    { '<leader>gc', ':Git commit<CR>', desc = 'Git commit' },
    { '<leader>gb', ':Git blame<CR>', desc = 'Git blame' },
    { '<leader>gl', ':Git log<CR>', desc = 'Git log' },
    { '<leader>gp', ':Git push<CR>', desc = 'Git push' },
  },
  opts = {},
}
