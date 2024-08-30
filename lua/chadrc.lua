-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

local headers = require "core.headers"

M.base46 = {
  theme = "tokyodark",
  transparency = false,
  theme_toggle = { "tokyodark", "rosepine" },

  integrations = {
    "notify",
    "dap",
    "trouble",
  },
	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}
local function get_header()
  if vim.g.random_header then
    local headerNames = {}
    for name, _ in pairs(headers) do
      table.insert(headerNames, name)
    end

    local randomName = headerNames[math.random(#headerNames)]
    local randomHeader = headers[randomName]
    return randomHeader
  else
    return headers["nvchad"]
  end
end

M.ui = {
  transparency = false,
  lsp = {
    signature = {
      disabled = true,
    },
  },
  cmp = {
    icons = true;
    -- lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
  },
  statusline = {
    theme = "vscode", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "round",
    -- order = {
    --  "mode",
    --  "file",
    --  "git",
    --  "%=",
    --  "lsp_msg",
    --  "python_venv",
    --  "diagnostics",
    --  "command",
    --  "clients",
    --  "cwd",
    --  "total_lines",
    --},
  },
  -- nvdash = {
  --   load_on_startup = true,
  --   header = get_header(),
  --   buttons = {
  --     { "  Find File", "Spc ;", "FzfLua find_files" },
  --     { "󰈚  Recent Files", "Spc f o", "FzfLua oldfiles" },
  --     { "󰈭  Find Word", "Spc f w n", "FzfLua live_grep_native" },
  --   },
  -- },
}

M.cheatsheet = { theme = "grid" }

M.mason = {
  cmd = true,
  -- Use names from mason.nvim 
  -- For example, if you want to install "tsserver" you should use "typescript-language-server" in the list below
  pkgs = {
    -- Lua
    "lua-language-server",
    "stylua",

    -- Web Development
    -- "css-lsp",
    -- "html-lsp",
    -- "typescript-language-server",
    -- "deno",
    -- "vue-language-server",
    -- "tailwindcss-language-server",
    -- "emmet_language_server",
    -- "eslint-lsp",

    -- PHP
    -- "intelephense",

    -- C/C++
    -- "clangd",
    -- "clang-format",

    -- CMake
    -- "neocmakelsp",

    -- Java
    -- "jdtls",

    -- Yaml
    -- "yaml-language-server",

    -- Python
    -- "basedpyright",

    -- Go
    -- "gopls",

    -- C#
    -- "omnisharp",
    -- "omnisharp-mono",
  },
}

return M
