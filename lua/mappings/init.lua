-- Telescope mappings
-- <leader> => \
vim.keymap.set('n', '<leader>r', ':source<CR>', { desc = 'Reload neovim', noremap = true, silent = false })

-- Nvim tree
local nvimtreeutils = require('tree')
vim.keymap.set('n', '<C-t>', nvimtreeutils.toggle_tree, { desc = 'Toggle Tree', noremap = true, silent = true })
vim.keymap.set('n', '<Tab>', ':NvimTreeFocus<CR>', { desc = 'Focus tree', noremap = true, silent = true })

-- Telescope
local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
vim.keymap.set('n', '<C-f>', nvimtreeutils.find_file_and_focus)
vim.keymap.set('n', '<C-d>', nvimtreeutils.find_directory_and_focus)
vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', 'f',function() builtin.live_grep { search_dirs = { vim.fn.expand('%:p') } } end)
vim.keymap.set('n', '<C-g>', nvimtreeutils.live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

-- Diagnostic
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Harpoon
local harpoon = require('harpoon')
harpoon:setup()
vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end)
vim.keymap.set('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set('n', '1', function() harpoon:list():select(1) end)
vim.keymap.set('n', '2', function() harpoon:list():select(2) end)
vim.keymap.set('n', '3', function() harpoon:list():select(3) end)
vim.keymap.set('n', '4', function() harpoon:list():select(4) end)
vim.keymap.set('n', '5', function() harpoon:list():select(5) end)

-- Open new windows
vim.keymap.set('n', '<C-n>', function()
    local current_file = vim.api.nvim_buf_get_name(0)
    vim.cmd('vnew ' .. current_file)
end, { desc = 'Open current file in vertical split' })
vim.keymap.set('n', '<C-m>', ':split<CR>', { desc = 'Open current file in vertical split' })

-- General remappings
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', { desc = 'Move to the right window', noremap = true, silent = true })
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', { desc = 'Move to the left window', noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', { desc = 'Move to the top window', noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', { desc = 'Move to the bottom window', noremap = true, silent = true })
vim.keymap.set('n', 'q', ':q<CR>', { desc = 'Quit window', noremap = true, silent = true })
vim.keymap.set('n', 's', ':w<CR>', { desc = "write file", noremap = true, silent = false })

--AI
vim.keymap.set('n', '<leader>c', ':Gen Chat<CR>', { desc = 'Open gen Chat', noremap = true, silent = false })
