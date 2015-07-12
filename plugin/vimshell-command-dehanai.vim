if exists('g:loaded_vimshell_command_dehanai')
  finish
endif

let s:save_cpo = &cpo
set cpo&vim
"#-=- -=- -=- -=- -=- -=- -=- -=- -=-#"

" Add hook to vimshell
augroup VimShellCommandDehanai
	autocmd!
	autocmd FileType vimshell
	\	call vimshell#hook#add('notfound', 'vimshell_command_dehanai_notfound', 'vimshell_command_dehanai#notfound')
augroup END

"#-=- -=- -=- -=- -=- -=- -=- -=- -=-#"
let &cpo = s:save_cpo
unlet s:save_cpo
