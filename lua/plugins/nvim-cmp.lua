---@type NvPluginSpec
return {
  {
    "supermaven-inc/supermaven-nvim",
    -- commit = "df3ecf7",
    event = "User FilePost",
    opts = {
      disable_keymaps = false,
      disable_inline_completion = false,
      keymaps = {
        accept_suggestion = "<A-s>",
        clear_suggestion = "<A-c>",
        accept_word = "<A-y>",
      },
    },
  },
  -- {
  --   "L3MON4D3/LuaSnip",
  --   dependencies = "rafamadriz/friendly-snippets",
  --   build = "make install_jsregexp",
  -- },
  {
    "hrsh7th/nvim-cmp",
    -- dependencies = {
    --   "hrsh7th/cmp-nvim-lsp-signature-help",
    -- },
    config = function(_, opts)
      local cmp = require "cmp"
      opts.mapping ["<A-a>"] = cmp.mapping.confirm { select = false }
      opts.mapping ["<A-e>"] = cmp.mapping.abort()
      opts.mapping ["<C-b>"] = cmp.mapping.scroll_docs(-4)
      opts.mapping ["<C-f>"] = cmp.mapping.scroll_docs(4)
      opts.mapping ["<CR>"] = cmp.config.disable
      opts.window.documentation.border = "none"
      opts.window.completion.border = 'none'
      cmp.setup(opts)
    end,
  }

}
