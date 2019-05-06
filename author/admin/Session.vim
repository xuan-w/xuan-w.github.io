let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(table-mode-tableize) |:call tablemode#TableizeInsertMode()a
map! <S-Insert> *
map  <Plug>(ctrlp)
vmap  "*d
xmap S <Plug>VSurround
noremap \O {Oo
noremap \o }oO
xmap \T <Plug>(table-mode-tableize-delimiter)
xmap \tt <Plug>(table-mode-tableize)
nmap \tt <Plug>(table-mode-tableize)
nnoremap <silent> \tm :call tablemode#Toggle()
vnoremap <silent> \cs "ky:ThesaurusQueryReplace k
nnoremap <silent> \cs :ThesaurusQueryReplaceCurrentWord
noremap \z "=ZoteroCite()p
noremap \s :update
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> <Plug>(table-mode-sort) :call tablemode#spreadsheet#Sort('')
nnoremap <silent> <Plug>(table-mode-eval-formula) :call tablemode#spreadsheet#formula#EvaluateFormulaLine()
nnoremap <silent> <Plug>(table-mode-add-formula) :call tablemode#spreadsheet#formula#Add()
nnoremap <silent> <Plug>(table-mode-delete-column) :call tablemode#spreadsheet#DeleteColumn()
nnoremap <silent> <Plug>(table-mode-delete-row) :call tablemode#spreadsheet#DeleteRow()
xnoremap <silent> <Plug>(table-mode-cell-text-object-i) :call tablemode#spreadsheet#cell#TextObject(1)
xnoremap <silent> <Plug>(table-mode-cell-text-object-a) :call tablemode#spreadsheet#cell#TextObject(0)
onoremap <silent> <Plug>(table-mode-cell-text-object-i) :call tablemode#spreadsheet#cell#TextObject(1)
onoremap <silent> <Plug>(table-mode-cell-text-object-a) :call tablemode#spreadsheet#cell#TextObject(0)
nnoremap <silent> <Plug>(table-mode-motion-right) :call tablemode#spreadsheet#cell#Motion('l')
nnoremap <silent> <Plug>(table-mode-motion-left) :call tablemode#spreadsheet#cell#Motion('h')
nnoremap <silent> <Plug>(table-mode-motion-down) :call tablemode#spreadsheet#cell#Motion('j')
nnoremap <silent> <Plug>(table-mode-motion-up) :call tablemode#spreadsheet#cell#Motion('k')
nnoremap <silent> <Plug>(table-mode-realign) :call tablemode#table#Realign('.')
xnoremap <silent> <Plug>(table-mode-tableize-delimiter) :call tablemode#TableizeByDelimiter()
xnoremap <silent> <Plug>(table-mode-tableize) :Tableize
nnoremap <silent> <Plug>(table-mode-tableize) :Tableize
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Plug>(ctrlp) :CtrlP
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <Plug>(grammarous-move-to-previous-error) :call grammarous#move_to_previous_error(getpos('.')[1 : 2], b:grammarous_result)
nnoremap <silent> <Plug>(grammarous-move-to-next-error) :call grammarous#move_to_next_error(getpos('.')[1 : 2], b:grammarous_result)
nnoremap <silent> <Plug>(grammarous-disable-category) :call grammarous#disable_category_at(getpos('.')[1 : 2], b:grammarous_result)
nnoremap <silent> <Plug>(grammarous-disable-rule) :call grammarous#disable_rule_at(getpos('.')[1 : 2], b:grammarous_result)
nnoremap <silent> <Plug>(grammarous-remove-error) :call grammarous#remove_error_at(getpos('.')[1 : 2], b:grammarous_result)
nnoremap <silent> <Plug>(grammarous-close-info-window) :call grammarous#info_win#close()
nnoremap <silent> <Plug>(grammarous-fixall) :call grammarous#fixall(b:grammarous_result)
nnoremap <silent> <Plug>(grammarous-fixit) :call grammarous#fixit(grammarous#get_error_at(getpos('.')[1 : 2], b:grammarous_result))
nnoremap <silent> <Plug>(grammarous-reset) :call grammarous#reset()
nnoremap <silent> <Plug>(grammarous-open-info-window) :call grammarous#create_update_info_window_of(b:grammarous_result)
nnoremap <silent> <Plug>(grammarous-move-to-info-window) :call grammarous#create_and_jump_to_info_window_of(b:grammarous_result)
vmap <C-Del> "*d
vmap <S-Del> "*d
vmap <C-Insert> "*y
vmap <S-Insert> "-d"*P
nmap <S-Insert> "*P
imap S <Plug>ISurround
imap s <Plug>Isurround
imap  <Plug>Isurround
inoremap  =ZoteroCite()
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=2
set breakat=\ \	!-+;:,./?
set completefunc=thesaurus_query#auto_complete_integrate
set display=lastline
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,default,cp950,cp932,latin1
set guifont=Consolas:h16:cANSI:qDRAFT
set guifontwide=YaHei_Consolas_Hybrid:h16:cGB2312:qDRAFT
set helplang=En
set hlsearch
set nojoinspaces
set pythonthreedll=C:\\tree\\HighSmall\\Python36-32\\python36.dll
set pythonthreehome=C:\\tree\\HighSmall\\Python36-32
set pyxversion=3
set runtimepath=~/vimfiles,~\\vimfiles\\plugged\\vim-pandoc-syntax,~\\vimfiles\\plugged\\vim-pandoc,~\\vimfiles\\plugged\\vim-table-mode,~\\vimfiles\\plugged\\thesaurus_query.vim,~\\vimfiles\\plugged\\vim-grammarous,~\\vimfiles\\plugged\\goyo.vim,~\\vimfiles\\plugged\\asyncrun.vim,~\\vimfiles\\plugged\\vim-surround,~\\vimfiles\\plugged\\ctrlp.vim,C:\\Program\ Files\ (x86)\\Vim/vimfiles,C:\\Program\ Files\ (x86)\\Vim\\vim81,C:\\Program\ Files\ (x86)\\Vim/vimfiles/after,~/vimfiles/after
set showmatch
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~\OneDrive\Working\web\hugo_academic\config\_default
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +53 params.toml
badd +10 \Users\pkuwy\OneDrive\Working\web\hugo_academic\themes\academic\exampleSite\content\home\projects.md
badd +0 \Users\pkuwy\OneDrive\Working\web\hugo_academic\content\author\admin\_index.md
argglobal
silent! argdel *
$argadd params.toml
edit \Users\pkuwy\OneDrive\Working\web\hugo_academic\content\author\admin\_index.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> [] <Plug>(pandoc-keyboard-rw-sect-end)
nmap <buffer> [[ <Plug>(pandoc-keyboard-rw-header)
nmap <buffer> \xi <Plug>(pandoc-hypertext-goto-id)
nmap <buffer> \gB <Plug>(pandoc-keyboard-links-file-back)
nmap <buffer> \gb <Plug>(pandoc-keyboard-links-back)
nmap <buffer> \sl <Plug>(pandoc-keyboard-links-split)
nmap <buffer> \gl <Plug>(pandoc-keyboard-links-open)
nmap <buffer> \rb <Plug>(pandoc-keyboard-ref-backfrom)
nmap <buffer> \rg <Plug>(pandoc-keyboard-ref-goto)
nmap <buffer> \nr <Plug>(pandoc-keyboard-ref-insert)
vmap <buffer> \_ <Plug>(pandoc-keyboard-toggle-subscript)
nmap <buffer> \_ <Plug>(pandoc-keyboard-toggle-subscript)
vmap <buffer> \^ <Plug>(pandoc-keyboard-toggle-superscript)
nmap <buffer> \^ <Plug>(pandoc-keyboard-toggle-superscript)
vmap <buffer> \~~ <Plug>(pandoc-keyboard-toggle-strikeout)
nmap <buffer> \~~ <Plug>(pandoc-keyboard-toggle-strikeout)
vmap <buffer> \' <Plug>(pandoc-keyboard-toggle-verbatim)
nmap <buffer> \' <Plug>(pandoc-keyboard-toggle-verbatim)
vmap <buffer> \b <Plug>(pandoc-keyboard-toggle-strong)
nmap <buffer> \b <Plug>(pandoc-keyboard-toggle-strong)
vmap <buffer> \i <Plug>(pandoc-keyboard-toggle-emphasis)
nmap <buffer> \i <Plug>(pandoc-keyboard-toggle-emphasis)
nmap <buffer> \hcn <Plug>(pandoc-keyboard-nth-header-child)
nmap <buffer> \hcl <Plug>(pandoc-keyboard-last-header-child)
nmap <buffer> \hcf <Plug>(pandoc-keyboard-first-header-child)
nmap <buffer> \hsb <Plug>(pandoc-keyboard-prev-header-sibling)
nmap <buffer> \hsn <Plug>(pandoc-keyboard-next-header-sibling)
nmap <buffer> \hp <Plug>(pandoc-keyboard-cur-header-parent)
nmap <buffer> \hh <Plug>(pandoc-keyboard-cur-header)
nmap <buffer> \hb <Plug>(pandoc-keyboard-prev-header)
nmap <buffer> \hn <Plug>(pandoc-keyboard-next-header)
nmap <buffer> \hd <Plug>(pandoc-keyboard-remove-header)
nmap <buffer> \# <Plug>(pandoc-keyboard-apply-header)
nmap <buffer> \lcn <Plug>(pandoc-keyboard-nth-li-child)
nmap <buffer> \lcl <Plug>(pandoc-keyboard-last-li-child)
nmap <buffer> \lcf <Plug>(pandoc-keyboard-first-li-child)
nmap <buffer> \lsp <Plug>(pandoc-keyboard-prev-li-sibling)
nmap <buffer> \lsn <Plug>(pandoc-keyboard-next-li-sibling)
nmap <buffer> \llp <Plug>(pandoc-keyboard-cur-li-parent)
nmap <buffer> \ll <Plug>(pandoc-keyboard-cur-li)
nmap <buffer> \lp <Plug>(pandoc-keyboard-prev-li)
nmap <buffer> \ln <Plug>(pandoc-keyboard-next-li)
nmap <buffer> ][ <Plug>(pandoc-keyboard-ff-sect-end)
nmap <buffer> ]] <Plug>(pandoc-keyboard-ff-header)
omap <buffer> aPt :normal vaPl
vmap <buffer> <silent> aPt <Plug>(pandoc-keyboard-select-subscript-inclusive)
omap <buffer> aPu :normal vaPu
vmap <buffer> <silent> aPu <Plug>(pandoc-keyboard-select-superscript-inclusive)
omap <buffer> aPk :normal vaPk
vmap <buffer> <silent> aPk <Plug>(pandoc-keyboard-select-strikeout-inclusive)
omap <buffer> aPv :normal vaPv
vmap <buffer> <silent> aPv <Plug>(pandoc-keyboard-select-verbatim-inclusive)
omap <buffer> aPs :normal vaPs
vmap <buffer> <silent> aPs <Plug>(pandoc-keyboard-select-strong-inclusive)
omap <buffer> aPe :normal vaPe
vmap <buffer> <silent> aPe <Plug>(pandoc-keyboard-select-emphasis-inclusive)
omap <buffer> aS :normal VaS
vmap <buffer> aS <Plug>(pandoc-keyboard-select-section-inclusive)
nmap <buffer> gx <Plug>(pandoc-hypertext-open-system)
nmap <buffer> gf <Plug>(pandoc-hypertext-open-local)
omap <buffer> iPt :normal viPl
vmap <buffer> <silent> iPt <Plug>(pandoc-keyboard-select-subscript-exclusive)
omap <buffer> iPu :normal viPu
vmap <buffer> <silent> iPu <Plug>(pandoc-keyboard-select-superscript-exclusive)
omap <buffer> iPk :normal viPk
vmap <buffer> <silent> iPk <Plug>(pandoc-keyboard-select-strikeout-exclusive)
omap <buffer> iPv :normal viPv
vmap <buffer> <silent> iPv <Plug>(pandoc-keyboard-select-verbatim-exclusive)
omap <buffer> iPs :normal viPs
vmap <buffer> <silent> iPs <Plug>(pandoc-keyboard-select-strong-exclusive)
omap <buffer> iPe :normal viPe
vmap <buffer> <silent> iPe <Plug>(pandoc-keyboard-select-emphasis-exclusive)
omap <buffer> iS :normal ViS
vmap <buffer> iS <Plug>(pandoc-keyboard-select-section-exclusive)
vnoremap <buffer> j gj
nnoremap <buffer> j gj
vnoremap <buffer> k gk
nnoremap <buffer> k gk
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-goto-id) :call pandoc#hypertext#GotoID()
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-open-system) :call pandoc#hypertext#OpenSystem()
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-open-local) :call pandoc#hypertext#OpenLocal()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-links-file-back) :call pandoc#hypertext#BackFromFile()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-links-back) :call pandoc#hypertext#BackFromLink()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-links-split) :call pandoc#hypertext#OpenLink( g:pandoc#hypertext#split_open_cmd )
noremap <buffer> <silent> <Plug>(pandoc-keyboard-links-open) :call pandoc#hypertext#OpenLink( g:pandoc#hypertext#edit_open_cmd )
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-backfrom) :call pandoc#keyboard#references#BACKFROM_Ref()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-goto) :call pandoc#keyboard#references#GOTO_Ref()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-insert) :call pandoc#keyboard#references#Insert_Ref()a
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-subscript-exclusive) :call pandoc#keyboard#styles#SelectSubscript("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-subscript-inclusive) :call pandoc#keyboard#styles#SelectSubscript("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :call pandoc#keyboard#styles#ToggleSubscript(visualmode())
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :set opfunc=pandoc#keyboard#styles#ToggleSubscriptg@
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :set opfunc=pandoc#keyboard#styles#ToggleSubscriptg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-superscript-exclusive) :call pandoc#keyboard#styles#SelectSuperscript("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-superscript-inclusive) :call pandoc#keyboard#styles#SelectSuperscript("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :call pandoc#keyboard#styles#ToggleSuperscript(visualmode())
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :set opfunc=pandoc#keyboard#styles#ToggleSuperscriptg@
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :set opfunc=pandoc#keyboard#styles#ToggleSuperscriptg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strikeout-exclusive) :call pandoc#keyboard#styles#SelectStrikeout("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strikeout-inclusive) :call pandoc#keyboard#styles#SelectStrikeout("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :call pandoc#keyboard#styles#ToggleStrikeout(visualmode())
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :set opfunc=pandoc#keyboard#styles#ToggleStrikeoutg@
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :set opfunc=pandoc#keyboard#styles#ToggleStrikeoutg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-verbatim-exclusive) :call pandoc#keyboard#styles#SelectVerbatim("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-verbatim-inclusive) :call pandoc#keyboard#styles#SelectVerbatim("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :call pandoc#keyboard#styles#ToggleVerbatim(visualmode())
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :set opfunc=pandoc#keyboard#styles#ToggleVerbatimg@
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :set opfunc=pandoc#keyboard#styles#ToggleVerbatimg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strong-exclusive) :call pandoc#keyboard#styles#SelectStrong("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strong-inclusive) :call pandoc#keyboard#styles#SelectStrong("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :call pandoc#keyboard#styles#ToggleStrong(visualmode())
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :set opfunc=pandoc#keyboard#styles#ToggleStrongg@
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :set opfunc=pandoc#keyboard#styles#ToggleStrongg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-emphasis-exclusive) :call pandoc#keyboard#styles#SelectEmphasis("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-emphasis-inclusive) :call pandoc#keyboard#styles#SelectEmphasis("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :call pandoc#keyboard#styles#ToggleEmphasis(visualmode())
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :set opfunc=pandoc#keyboard#styles#ToggleEmphasisg@
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :set opfunc=pandoc#keyboard#styles#ToggleEmphasisg@
noremap <buffer> <silent> <Plug>(pandoc-keyboard-nth-header-child) :call pandoc#keyboard#sections#GotoNthChildHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-last-header-child) :call pandoc#keyboard#sections#LastChildHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-first-header-child) :call pandoc#keyboard#sections#FirstChildHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-header-sibling) :call pandoc#keyboard#sections#PrevSiblingHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-header-sibling) :call pandoc#keyboard#sections#NextSiblingHeader()
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-section-exclusive) :call pandoc#keyboard#sections#SelectSection('exclusive')
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-section-inclusive) :call pandoc#keyboard#sections#SelectSection('inclusive')
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-header-parent) :call pandoc#keyboard#sections#CurrentHeaderParent()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-header) :call pandoc#keyboard#sections#CurrentHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-rw-sect-end) :call pandoc#keyboard#sections#PrevSectionEnd(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ff-sect-end) :call pandoc#keyboard#sections#NextSectionEnd(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-rw-header) :call pandoc#keyboard#sections#BackwardHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ff-header) :call pandoc#keyboard#sections#ForwardHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-header) :call pandoc#keyboard#sections#PrevHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-header) :call pandoc#keyboard#sections#NextHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-remove-header) :call pandoc#keyboard#sections#RemoveHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-apply-header) :call pandoc#keyboard#sections#ApplyHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-nth-li-child) :call pandoc#keyboard#lists#GotoNthListItemChild(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-last-li-child) :call pandoc#keyboard#lists#LastListItemChild()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-first-li-child) :call pandoc#keyboard#lists#FirstListItemChild()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-li-sibling) :call pandoc#keyboard#lists#PrevListItemSibling()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-li-sibling) :call pandoc#keyboard#lists#NextListItemSibling()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-li-parent) :call pandoc#keyboard#lists#CurrentListItemParent()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-li) :call pandoc#keyboard#lists#CurrentListItem()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-li) :call pandoc#keyboard#lists#PrevListItem()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-li) :call pandoc#keyboard#lists#NextListItem()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->,:|,n:>
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=2
setlocal completefunc=thesaurus_query#auto_complete_integrate
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=pandoc\ -t\ markdown\ --wrap=none\ --reference-links
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'pandoc'
setlocal filetype=pandoc
endif
setlocal fixendofline
setlocal foldcolumn=1
setlocal foldenable
setlocal foldexpr=pandoc#folding#FoldExpr()
setlocal foldignore=#
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=pandoc#folding#FoldText()
setlocal formatexpr=
setlocal formatoptions=1n
setlocal formatlistpat=\\C^\\s*[\\[({]\\?\\([0-9]\\+\\|[iIvVxXlLcCdDmM]\\+\\|[a-zA-Z]\\)[\\]:.)}]\\s\\+\\|^\\s*[-+o*]\\s\\+
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=pandoc#indent#GetIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,[,(,{,),},],&,=\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=@,48-57,_,128-167,224-235
setlocal keywordprg=
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=pandoc#completion#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'pandoc'
setlocal syntax=pandoc
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 15 - ((14 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 0105|
lcd ~\OneDrive\Working\web\hugo_academic\content\author\admin
tabnext 1
if exists('s:wipebuf') && s:wipebuf != bufnr('%')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
