require("plugins.plugins-setup")
require("core.options")
require("core.keymap")
require('lualine').setup()
require("nvim-tree").setup()
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"vim","bash","c","cpp","javascript","json","lua","python","go","java","zig","c_sharp","llvm","verilog"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "clangd"
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}

require("plugins.cmp")

require('Comment').setup()

vim.opt.termguicolors = true

require("bufferline").setup {
    options = {
        diagnostics = "nvim_lsp",
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
    }
}


require('gitsigns').setup {
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
}
