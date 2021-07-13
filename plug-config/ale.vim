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
let g:ale_disable_lsp = 1

" Include the linter name (e.g. 'hack' or 'hhast'), code, and message in errors
let g:ale_echo_msg_format = '[%linter%]% [code]% %s'
" use docker lsp
let g:ale_hack_hack_executable = '/usr/local/bin/com.docker.cli exec -i hhvm-slack-dev /usr/bin/hh_client lsp'
