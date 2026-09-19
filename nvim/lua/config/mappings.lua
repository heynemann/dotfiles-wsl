-- --------- NAVIGATION MAPPINGS ---------
vim.keymap.set('n', '<Left>', ':tabprevious<CR>', { silent = true })
vim.keymap.set('n', '<Right>', ':tabnext<CR>', { silent = true })

vim.keymap.set("n", "<Leader>b", function()
  vim.cmd("%bd") 
end, { desc = "Deletar absolutamente todos os buffers" })

-- --------- PLUGIN MAPPINGS ---------

-- TELESCOPE
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>t', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- COMMENT
-- Toggle current line or with count
vim.keymap.set('n', '<leader>cc', function()
  return vim.v.count == 0
    and '<Plug>(comment_toggle_linewise_current)'
    or '<Plug>(comment_toggle_linewise_count)'
end, { expr = true })

-- Toggle in Op-pending mode
vim.keymap.set('n', '<leader>c', '<Plug>(comment_toggle_linewise)')

-- Toggle in VISUAL mode
vim.keymap.set('x', '<leader>c', '<Plug>(comment_toggle_linewise_visual)')

-- New Tabs
vim.keymap.set('n', 'tt', ':tabnew<CR>', { silent = true })

-- Search
vim.keymap.set('n', '/', '/\\v', { silent=true, remap=false })
vim.keymap.set('x', '/', '/\\v', { silent=true, remap=false })
vim.keymap.set('n', '<leader><space>', ':noh<CR>', { silent=true })
