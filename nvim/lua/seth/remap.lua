vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-s>", ":w<CR>")

vim.keymap.set("n", "<leader>mw", "<C-w>n<C-w>r10<C-w>-:put =bufnr('%')<CR>")

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
--Allows you to move highlighted lines up and down with Capitol J & K

vim.keymap.set("n", "J", "mzJ`z")
--appends line below to current line without moving cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
--<C-d> & <C-u> are half page jump commands. This macro centers the cursor
--when using these commands
vim.keymap.set("n", "n", "nzzzv")
--n is defualt next highlighted item this macro centers text
--around the highlighted item when jumped to
vim.keymap.set("n", "N", "Nzzzv")
--N is previous highlighted item

-- When pasting over an item selected with visual mode
-- the item pasted over is placed into the void register this keeps the pasted
-- text in your register when <leader> is pressed
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- places  yanked text into the system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
--unbinds capitol q which is an alternitive quit button
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
--tmux shortcut
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
--formats the buffer. couldn't figure out what that means exactly

--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
--vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
--vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
-- 'Quick fix navigation'

-- nnoremap <silent> [<space>  :<c-u>put!=repeat([''],v:count)<bar>']+1<cr>
-- nnoremap <silent> ]<space>  :<c-u>put =repeat([''],v:count)<bar>'[-1<cr>

vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "E", "$")
vim.keymap.set("n", "B", "^")

vim.keymap.set("n", "<M-h>", "5<C-W><")
vim.keymap.set("n", "<M-j>", "5<C-W>+")
vim.keymap.set("n", "<M-k>", "5<C-W>-")
vim.keymap.set("n", "<M-l>", "5<C-W>>")

vim.keymap.set("n", "<leader>n", "<cmd>silent noh<CR>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
--when <space> s is pressed all occurrences of the selected word will be replaced
--with what you enter
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
-- change mods the current file so when you exit vim the file is executable

vim.keymap.set("n", "<leader>t", "<cmd>tabedit<CR>")

vim.keymap.set("n", "<leader>/", "/<++><CR>:noh<CR>cf>")
-- vim.keymap.set("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<CR>")
-- arrayify
vim.keymap.set("n", "<leader>c", ":s/./'&', /g<CR>:s/, $/]/<CR>:s/^/[/<CR>:noh<CR>")
vim.keymap.set("n", "<leader>d", "<cmd>InsertDate<CR>")

vim.api.nvim_create_user_command("InsertDate", function()
    local date = vim.fn.system("date +%b/%d/%Y")
    WriteAfterCursor(date:gsub("\r?\n", ""))
end, {})

function WriteAfterCursor(str)
    local pos = vim.api.nvim_win_get_cursor(0)[2]
    local line = vim.api.nvim_get_current_line()
    local newline = line:sub(0, pos + 1) .. str .. line:sub(pos + 2)
    vim.api.nvim_set_current_line(newline)
end
