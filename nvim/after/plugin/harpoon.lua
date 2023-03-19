local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
-- adds current buffer to harpoon list
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
-- opens harpoon list

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
-- binds keys to different entries on the harpoon list
-- these entries can be accessed outside of the list

-- The entries of the harpoon list can be moved around like any other text line
