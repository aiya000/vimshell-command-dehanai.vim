let s:save_cpo = &cpo
set cpo&vim
"#-=- -=- -=- -=- -=- -=- -=- -=- -=-#"

function! vimshell_command_dehanai#notfound(cmdline, context)
	" notfound as error
	let b:vimshell.system_variables['status'] = 'notfound'
	normal! o!!!コマンドではない。!!!
	return a:cmdline
endfunction

"#-=- -=- -=- -=- -=- -=- -=- -=- -=-#"
let &cpo = s:save_cpo
unlet s:save_cpo
