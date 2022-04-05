lua << EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = { "php" }
  }
}
EOF
