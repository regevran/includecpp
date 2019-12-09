
" create highlighted 'groups' of one symbol each
syntax match Inclusive0 "#include <[Cc]++>"hs=s,he=s+1 contains=Inclusive1
syntax match Inclusive1 "#include <[Cc]++>"hs=s+1,he=s+2 containedin=Inclusive0 contains=Inclusive2 contained
syntax match Inclusive2 "#include <[Cc]++>"hs=s+2,he=s+3 containedin=Inclusive1 contains=Inclusive3 contained
syntax match Inclusive3 "#include <[Cc]++>"hs=s+3,he=s+4 containedin=Inclusive2 contains=Inclusive4 contained
syntax match Inclusive4 "#include <[Cc]++>"hs=s+4,he=s+5 containedin=Inclusive3 contains=Inclusive5 contained
syntax match Inclusive5 "#include <[Cc]++>"hs=s+5,he=s+6 containedin=Inclusive4 contains=Inclusive6 contained
syntax match Inclusive6 "#include <[Cc]++>"hs=s+6,he=s+7 containedin=Inclusive5 contains=Inclusive7 contained
syntax match Inclusive7 "#include <[Cc]++>"hs=s+7,he=s+8 containedin=Inclusive6 contained

" set colors for the groups
highlight Inclusive0 ctermfg=red    ctermbg=none
highlight Inclusive1 ctermfg=green  ctermbg=none
highlight Inclusive2 ctermfg=blue   ctermbg=none
highlight Inclusive3 ctermfg=black  ctermbg=none
highlight Inclusive4 ctermfg=red    ctermbg=none
highlight Inclusive5 ctermfg=green  ctermbg=none
highlight Inclusive6 ctermfg=blue   ctermbg=none
highlight Inclusive7 ctermfg=black  ctermbg=none

