let s:hook = {'old_path': $PATH}

function! s:hook.on_module_loaded(session, context)
  if $PATH !=# self.old_path
    let $PATH = self.old_path
  endif
endfunction

function! quickrun#hook#mingw_python_sucks#new()
  return deepcopy(s:hook)
endfunction
