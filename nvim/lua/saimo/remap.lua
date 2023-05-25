vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Exit File" })
vim.keymap.set("n", "<C-s>", function() vim.cmd("w") end, { desc = "Save File" })
vim.keymap.set("n", "<leader>w", function() vim.cmd("w") end, { desc = "Save File" })

-- Fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git Status" })

-- GitSigns
vim.keymap.set("n", "<leader>gh", function() require("gitsigns").stage_hunk() end, { desc = "Stage Hunk" })
vim.keymap.set("n", "<leader>gu", function() require("gitsigns").undo_stage_hunk() end, { desc = "Undo Stage Hunk" })
vim.keymap.set("n", "<leader>gr", function() require("gitsigns").reset_hunk() end, { desc = "Reset Hunk" })
vim.keymap.set("n", "<leader>gR", function() require("gitsigns").reset_buffer() end, { desc = "Reset Buffer" })
vim.keymap.set("n", "<leader>gp", function() require("gitsigns").preview_hunk() end, { desc = "Preview Hunk" })
vim.keymap.set("n", "<leader>gb", function() require("gitsigns").blame_line() end, { desc = "Blame Line" })

-- Telescope
vim.keymap.set("n", "<leader>ff", function() require("telescope.builtin").find_files() end, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", function() require("telescope.builtin").live_grep() end, { desc = "Live Grep" })
vim.keymap.set("n", "<leader>fb", function() require("telescope.builtin").buffers() end, { desc = "Buffers" })
vim.keymap.set("n", "<leader>fh", function() require("telescope.builtin").help_tags() end, { desc = "Help Tags" })
vim.keymap.set("n", "<leader>fc", function() require("telescope.builtin").commands() end, { desc = "Commands" })
vim.keymap.set("n", "<leader>fk", function() require("telescope.builtin").keymaps() end, { desc = "Find Keymaps" })

-- Harpoon
vim.keymap.set("n", "<leader>hh", function() require("harpoon.ui").toggle_quick_menu() end, { desc = "Harpoon Menu" })
vim.keymap.set("n", "<leader>ha", function() require("harpoon.mark").add_file() end, { desc = "Add File to Harpoon" })
vim.keymap.set("n", "<leader>hu", function() require("harpoon.ui").nav_file(1) end, { desc = "Harpoon 1" })
vim.keymap.set("n", "<leader>hi", function() require("harpoon.ui").nav_file(2) end, { desc = "Harpoon 2" })
vim.keymap.set("n", "<leader>ho", function() require("harpoon.ui").nav_file(3) end, { desc = "Harpoon 3" })
vim.keymap.set("n", "<leader>hp", function() require("harpoon.ui").nav_file(4) end, { desc = "Harpoon 4" })

-- Neotree
vim.keymap.set("n", "<leader>e", function() vim.cmd("NvimTreeToggle") end, { desc = "Toggle tree" })
vim.keymap.set("n", "<leader>lf", function() vim.cmd("NvimTreeFindFile") end, { desc = "Locate file in tree" })

-- DAP
vim.keymap.set("n", "<F5>", function() require("dap").continue() end, { desc = "Debug Continue" })
vim.keymap.set("n", "<F10>", function() require("dap").step_over() end, { desc = "Debug Step Over" })
vim.keymap.set("n", "<F11>", function() require("dap").step_into() end, { desc = "Debug Step Into" })
vim.keymap.set("n", "<F12>", function() require("dap").step_out() end, { desc = "Debug Step Out" })
vim.keymap.set("n", "<leader>db", function() require("dap").toggle_breakpoint() end, { desc = "Toggle Breakpoint" })
vim.keymap.set("n", "<leader>di", function() require("dap").step_into_target() end, { desc = "Step Into Target" })
vim.keymap.set("n", "<leader>do", function() require("dap").step_out() end, { desc = "Debug Step Out" })
vim.keymap.set("n", "<leader>dO", function() require("dap").step_over() end, { desc = "Debug Step Over" })
vim.keymap.set("n", "<leader>dq", function() require("dap").close() end, { desc = "Debug Stop" })
vim.keymap.set("n", "<leader>dQ", function() require("dap").terminate() end, { desc = "Debug Terminate" })
vim.keymap.set("n", "<leader>dp", function() require("dap").pause() end, { desc = "Debug Pause" })

-- LSP
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, { desc = "LSP Hover" })

-- Copilot
vim.keymap.set("n", "<leader>ce", function() vim.cmd("Copilot enable") end, { desc = "Enable Copilot" })
vim.keymap.set("n", "<leader>cd", function() vim.cmd("Copilot disable") end, { desc = "Disable Copilot" })
