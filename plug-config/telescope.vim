lua << EOF
require('telescope').setup{
  defaults = {
      file_sorter = require('telescope.sorters').get_fzf_sorter,
      prompt_prefix = ' >',
      file_previewer = require('telescope.previewers').vim_buffer_cat.new,
      grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
      qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
      file_ignore_patterns = {
          "node_modules", ".docker", ".git"
      }
  },
  pickers = {
      find_files =  {
          theme = "ivy",
          previewer = false
      },
      live_grep =  {
          theme = "ivy"
      },
      buffers =  {
          theme = "ivy"
      },
      help_tags =  {
          theme = "ivy"
      },
      git_files =  {
          theme = "ivy",
          previewer = false
      },
  },
  extensions = {
   fzf = {
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
    }
  }
}

require('telescope').load_extension('fzf')

EOF

" Using Lua functions
nnoremap <leader><space> :Telescope git_files<CR>
nnoremap <leader>re :Telescope resume<CR>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fl <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
