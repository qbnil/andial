---@type NvPluginSpec
-- NOTE: Marks
return {
  "ThePrimeagen/harpoon",
  init = function()
    vim.keymap.set("n", "<leader>a", function()
      require("harpoon"):list():add()
      vim.notify("   Marked file", vim.log.levels.INFO, { title = "Harpoon" })
    end, { desc = "Harpoon | Add Mark" })

    vim.keymap.set("n", "<leader>hh", function()
      require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
    end, { desc = "Harpoon | Menu" })

    -- Uncomment below to enable navigation keymaps
    vim.keymap.set("n", "<leader>hn", function()
      require("harpoon"):list():next()
    end, { desc = "Harpoon | Next" })

    vim.keymap.set("n", "<leader>hp", function()
      require("harpoon"):list():prev()
    end, { desc = "Harpoon | Previous" })
    vim.keymap.set("n", "<A-1>", function()
        require("harpoon"):list():select(1)
    end)
    vim.keymap.set("n", "<A-2>", function()
        require("harpoon"):list():select(2)
    end)
    vim.keymap.set("n", "<A-3>", function()
        require("harpoon"):list():select(3)
    end)
    vim.keymap.set("n", "<A-4>", function()
        require("harpoon"):list():select(4)
    end)
    vim.keymap.set("n", "<A-5>", function()
        require("harpoon"):list():select(5)
    end)
    vim.keymap.set("n", "<A-6>", function()
        require("harpoon"):list():select(6)
    end)
    vim.keymap.set("n", "<A-7>", function()
        require("harpoon"):list():select(7)
    end)
    vim.keymap.set("n", "<A-8>", function()
        require("harpoon"):list():select(8)
    end)
    vim.keymap.set("n", "<A-9>", function()
        require("harpoon"):list():select(9)
    end)
    vim.keymap.set("n", "<A-0>", function()
        require("harpoon"):list():select(10)
    end)
  end,
  branch = "harpoon2",
  opts = {},
}
