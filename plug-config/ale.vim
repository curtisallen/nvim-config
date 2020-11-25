" ALE config
" Our custom hackfmt wrapper doesn't play well with ALE's builtin hackfmt fixer
function! Slackfmt(buffer) abort
    let l:executable ='/Users/callen/src/webapp/bin/hackfmt'
    return {'command': ale#Escape(l:executable) . ' %t -i %s', 'read_temporary_file': 1,}
endfunction
let g:ale_fixers={'hack': ['Slackfmt']}

let g:ale_linters = {
      \ 'javascript': ['standard'],
      \ 'yaml': ['yamllint'] ,
      \ "hack": ['hack', 'hhast'] }
      "\ 'go': ['golangci-lint'],
let g:ale_fix_on_save = 1
