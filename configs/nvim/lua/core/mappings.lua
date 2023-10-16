-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- window management
keymap("", "<Space>wv", "<C-w>v", opts)
keymap("", "<Space>ws", "<C-w>s", opts)
keymap("", "<Space>wx", "<C-w>x", opts)
keymap("", "<Space>wq", "<C-w>q", opts)
keymap("", "<Space>w+", "<C-w>+", opts)
keymap("", "<Space>w-", "<C-w>-", opts)
keymap("", "<Space>w>", "<C-w>>", opts)
keymap("", "<Space>w<", "<C-w><", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Plugins --

-- telescope general
keymap("n", "<Space>fe", "<cmd>Telescope<CR>", opts)
keymap("n", "<Space>fb", "<cmd>Telescope buffers<CR>", opts)
keymap("n", "<Space>fc", "<cmd>Telescope commands<CR>", opts)
keymap("n", "<Space>ff", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<Space>fg", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<Space>fk", "<cmd>Telescope keymaps<CR>", opts)
keymap("n", "<Space>fs", "<cmd>Telescope spell_suggest<CR>", opts)

-- telescope git
keymap("n", "<Space>gb", "<cmd>Telescope git_branches<CR>", opts)
keymap("n", "<Space>gc", "<cmd>Telescope git_commits<CR>", opts)
keymap("n", "<Space>gC", "<cmd>Telescope git_bcommits<CR>", opts)
keymap("n", "<Space>gs", "<cmd>Telescope git_status<CR>", opts)
keymap("n", "<Space>gS", "<cmd>Telescope git_files<CR>", opts)

-- lazygit
keymap("n", "<Space>gg", "<cmd>lazygit<CR>", opts)

-- buffer management
keymap("n", "<Space>bb", "<Cmd>BufferLineOrderByBufferNumber<CR>", opts)
keymap("n", "<Space>bd", "<Cmd>BufferLineOrderByDirectory<CR>", opts)
keymap("n", "<Space>bl", "<Cmd>BufferLineOrderByLanguage<CR>", opts)
keymap("n", "<Space>bw", "<Cmd>BufferLineOrderByWindowNumber<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Close buffers
keymap("n", "<S-w>", ":bdelete<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts) 
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- Lsp
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)

-- Other Ultilities
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Control all select
keymap("n", "<C-a>", "ggVG", opts)

-- Tmux Navigator 
keymap("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", opts)
keymap("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", opts)
keymap("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", opts)
keymap("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", opts)

-- Other Ultilities
keymap('n', '<C-w>z', '<cmd>WindowsMaximize')
keymap('n', '<C-w>_', '<cmd>WindowsMaximizeVertically')
keymap('n', '<C-w>|', '<cmd>WindowsMaximizeHorizontally')
keymap('n', '<C-w>=', '<cmd>WindowsEqualize')
