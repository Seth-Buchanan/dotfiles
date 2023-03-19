local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- use telescoping file search. The important one

vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- git file search

-- function that uses telescope's search function
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
