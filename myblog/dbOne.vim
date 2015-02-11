let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(neocomplcache_start_omni_complete) 
inoremap <silent> <Plug>(neocomplcache_start_auto_complete_no_select) 
inoremap <silent> <Plug>(neocomplcache_start_auto_complete) =neocomplcache#mappings#popup_post()
inoremap <silent> <expr> <Plug>(neocomplcache_start_unite_quick_match) unite#sources#neocomplcache#start_quick_match()
inoremap <silent> <expr> <Plug>(neocomplcache_start_unite_complete) unite#sources#neocomplcache#start_complete()
inoremap <Plug>(emmet-anchorize-summary) =emmet#util#closePopup()=emmet#anchorizeURL(1)
inoremap <Plug>(emmet-anchorize-url) =emmet#util#closePopup()=emmet#anchorizeURL(0)
inoremap <Plug>(emmet-remove-tag) =emmet#util#closePopup()=emmet#removeTag()
inoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
inoremap <Plug>(emmet-toggle-comment) =emmet#util#closePopup()=emmet#toggleComment()
inoremap <Plug>(emmet-image-size) =emmet#util#closePopup()=emmet#imageSize()
inoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
inoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
inoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
inoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
inoremap <Plug>(emmet-update-tag) =emmet#util#closePopup()=emmet#updateTag()
inoremap <Plug>(emmet-expand-word) =emmet#util#closePopup()=emmet#expandAbbr(1,"")
inoremap <Plug>(emmet-expand-abbr) =emmet#util#closePopup()=emmet#expandAbbr(0,"")
inoremap <silent> <expr> <Plug>(neosnippet_start_unite_snippet) unite#sources#neosnippet#start_complete()
inoremap <silent> <expr> <Plug>(neosnippet_jump) neosnippet#mappings#jump_impl()
inoremap <silent> <expr> <Plug>(neosnippet_expand) neosnippet#mappings#expand_impl()
inoremap <silent> <expr> <Plug>(neosnippet_jump_or_expand) neosnippet#mappings#jump_or_expand_impl()
inoremap <silent> <expr> <Plug>(neosnippet_expand_or_jump) neosnippet#mappings#expand_or_jump_impl()
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', "insert")
inoremap <silent> <expr> <Plug>delimitMateS-BS delimitMate#WithinEmptyPair() ? "\<Del>" : "\<S-BS>"
inoremap <silent> <Plug>delimitMateBS =delimitMate#BS()
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\<S-Tab>"
xmap  <Plug>SpeedDatingUp
nmap  <Plug>SpeedDatingUp
nnoremap  h
vmap 	 %
nmap 	 %
nnoremap <NL> j
xmap  <Plug>(neosnippet_start_unite_snippet_target)
nnoremap  k
nnoremap  l
xnoremap <silent>  :call multiple_cursors#new("v")
nnoremap <silent>  :call multiple_cursors#new("n")
xmap  <Plug>SpeedDatingDown
nmap  <Plug>SpeedDatingDown
vmap c <Plug>(emmet-code-pretty)
vmap m <Plug>(emmet-merge-lines)
nmap A <Plug>(emmet-anchorize-summary)
nmap a <Plug>(emmet-anchorize-url)
nmap k <Plug>(emmet-remove-tag)
nmap j <Plug>(emmet-split-join-tag)
nmap / <Plug>(emmet-toggle-comment)
nmap i <Plug>(emmet-image-size)
nmap N <Plug>(emmet-move-prev)
nmap n <Plug>(emmet-move-next)
vmap D <Plug>(emmet-balance-tag-outword)
nmap D <Plug>(emmet-balance-tag-outword)
vmap d <Plug>(emmet-balance-tag-inward)
nmap d <Plug>(emmet-balance-tag-inward)
nmap u <Plug>(emmet-update-tag)
nmap ; <Plug>(emmet-expand-word)
vmap , <Plug>(emmet-expand-abbr)
nmap , <Plug>(emmet-expand-abbr)
nnoremap <silent>  / :Unite -auto-resize -buffer-name=search grep:.
nnoremap <silent>  t :Unite -quick-match tab
nnoremap <silent>  b :Unite -quick-match buffer
nnoremap <silent>  o :Unite -auto-resize -buffer-name=outline outline
nnoremap <silent>  l :Unite -start-insert -auto-resize -buffer-name=line line
nnoremap <silent>  y :Unite -start-insert -buffer-name=yanks history/yank
nnoremap <silent>  f :Unite -start-insert -auto-resize -buffer-name=files file_rec/async
vnoremap   zf
nnoremap <silent>   @=(foldlevel('.') ? 'za' : '\ ')
nnoremap # #zzzv
xnoremap & :&&
nnoremap & :&&
nnoremap * *zzzv
nmap ,hp <Plug>GitGutterPreviewHunk
nmap ,hr <Plug>GitGutterRevertHunk
nmap ,hs <Plug>GitGutterStageHunk
xnoremap <silent> ,ms "my:TxSend(@m)
nnoremap <silent> ,mt :TxSetRunCmd
nnoremap <silent> ,ms :TxSend
nnoremap <silent> ,mr :TxRun
nnoremap <silent> ,mq :TxKill
nnoremap <silent> ,mp :TxSetPane
nnoremap <silent> ,mn :TxCreate
nnoremap <silent> ,mc :TxClear
nnoremap <silent> ,mb :TxSigInt
xmap <silent> ,e <Plug>CamelCaseMotion_e
xmap <silent> ,b <Plug>CamelCaseMotion_b
xmap <silent> ,w <Plug>CamelCaseMotion_w
omap <silent> ,e <Plug>CamelCaseMotion_e
omap <silent> ,b <Plug>CamelCaseMotion_b
omap <silent> ,w <Plug>CamelCaseMotion_w
nmap <silent> ,e <Plug>CamelCaseMotion_e
nmap <silent> ,b <Plug>CamelCaseMotion_b
nmap <silent> ,w <Plug>CamelCaseMotion_w
map ,, <Plug>(easymotion-prefix)
nmap ,ca <Plug>NERDCommenterAltDelims
xmap ,cu <Plug>NERDCommenterUncomment
nmap ,cu <Plug>NERDCommenterUncomment
xmap ,cb <Plug>NERDCommenterAlignBoth
nmap ,cb <Plug>NERDCommenterAlignBoth
xmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cA <Plug>NERDCommenterAppend
xmap ,cy <Plug>NERDCommenterYank
nmap ,cy <Plug>NERDCommenterYank
xmap ,cs <Plug>NERDCommenterSexy
nmap ,cs <Plug>NERDCommenterSexy
xmap ,ci <Plug>NERDCommenterInvert
nmap ,ci <Plug>NERDCommenterInvert
nmap ,c$ <Plug>NERDCommenterToEOL
xmap ,cn <Plug>NERDCommenterNested
nmap ,cn <Plug>NERDCommenterNested
xmap ,cm <Plug>NERDCommenterMinimal
nmap ,cm <Plug>NERDCommenterMinimal
xmap ,c  <Plug>NERDCommenterToggle
nmap ,c  <Plug>NERDCommenterToggle
xmap ,cc <Plug>NERDCommenterComment
nmap ,cc <Plug>NERDCommenterComment
nnoremap ,r :SingleCompileRun
nnoremap ,f :NERDTreeFind
nnoremap ,d :NERDTreeTabsToggle
nnoremap ,t :TagbarToggle
nnoremap ,u :UndotreeToggle
nnoremap ,q :%s/\s\+$//:let @/=''
nnoremap ,  :set hlsearch!
nnoremap ,n :set relativenumber!
nnoremap ,x :tabedit $MYVIMRC
vnoremap / /\v
nnoremap / /\v
vnoremap < <gv
vnoremap > >gv
vnoremap ? ?\v
nnoremap ? ?\v
xnoremap <silent> <expr> A targets#e('A')
onoremap <silent> Ala :call targets#o('alA')
onoremap <silent> Ana :call targets#o('anA')
onoremap <silent> Aa :call targets#o('acA')
onoremap <silent> AL$ :call targets#o('$LA')
onoremap <silent> AN$ :call targets#o('$NA')
onoremap <silent> Al$ :call targets#o('$lA')
onoremap <silent> An$ :call targets#o('$nA')
onoremap <silent> A$ :call targets#o('$cA')
onoremap <silent> AL& :call targets#o('&LA')
onoremap <silent> AN& :call targets#o('&NA')
onoremap <silent> Al& :call targets#o('&lA')
onoremap <silent> An& :call targets#o('&nA')
onoremap <silent> A& :call targets#o('&cA')
onoremap <silent> AL| :call targets#o('|LA')
onoremap <silent> AN| :call targets#o('|NA')
onoremap <silent> Al| :call targets#o('|lA')
onoremap <silent> An| :call targets#o('|nA')
onoremap <silent> A| :call targets#o('|cA')
onoremap <silent> AL\ :call targets#o('\LA')
onoremap <silent> AN\ :call targets#o('\NA')
onoremap <silent> Al\ :call targets#o('\lA')
onoremap <silent> An\ :call targets#o('\nA')
onoremap <silent> A\ :call targets#o('\cA')
onoremap <silent> AL/ :call targets#o('/LA')
onoremap <silent> AN/ :call targets#o('/NA')
onoremap <silent> Al/ :call targets#o('/lA')
onoremap <silent> An/ :call targets#o('/nA')
onoremap <silent> A/ :call targets#o('/cA')
onoremap <silent> AL# :call targets#o('#LA')
onoremap <silent> AN# :call targets#o('#NA')
onoremap <silent> Al# :call targets#o('#lA')
onoremap <silent> An# :call targets#o('#nA')
onoremap <silent> A# :call targets#o('#cA')
onoremap <silent> AL* :call targets#o('*LA')
onoremap <silent> AN* :call targets#o('*NA')
onoremap <silent> Al* :call targets#o('*lA')
onoremap <silent> An* :call targets#o('*nA')
onoremap <silent> A* :call targets#o('*cA')
onoremap <silent> AL_ :call targets#o('_LA')
onoremap <silent> AN_ :call targets#o('_NA')
onoremap <silent> Al_ :call targets#o('_lA')
onoremap <silent> An_ :call targets#o('_nA')
onoremap <silent> A_ :call targets#o('_cA')
onoremap <silent> AL~ :call targets#o('~LA')
onoremap <silent> AN~ :call targets#o('~NA')
onoremap <silent> Al~ :call targets#o('~lA')
onoremap <silent> An~ :call targets#o('~nA')
onoremap <silent> A~ :call targets#o('~cA')
onoremap <silent> AL= :call targets#o('=LA')
onoremap <silent> AN= :call targets#o('=NA')
onoremap <silent> Al= :call targets#o('=lA')
onoremap <silent> An= :call targets#o('=nA')
onoremap <silent> A= :call targets#o('=cA')
onoremap <silent> AL- :call targets#o('-LA')
onoremap <silent> AN- :call targets#o('-NA')
onoremap <silent> Al- :call targets#o('-lA')
onoremap <silent> An- :call targets#o('-nA')
onoremap <silent> A- :call targets#o('-cA')
onoremap <silent> AL+ :call targets#o('+LA')
onoremap <silent> AN+ :call targets#o('+NA')
onoremap <silent> Al+ :call targets#o('+lA')
onoremap <silent> An+ :call targets#o('+nA')
onoremap <silent> A+ :call targets#o('+cA')
onoremap <silent> AL: :call targets#o(':LA')
onoremap <silent> AN: :call targets#o(':NA')
onoremap <silent> Al: :call targets#o(':lA')
onoremap <silent> An: :call targets#o(':nA')
onoremap <silent> A: :call targets#o(':cA')
onoremap <silent> AL; :call targets#o(';LA')
onoremap <silent> AN; :call targets#o(';NA')
onoremap <silent> Al; :call targets#o(';lA')
onoremap <silent> An; :call targets#o(';nA')
onoremap <silent> A; :call targets#o(';cA')
onoremap <silent> AL. :call targets#o('.LA')
onoremap <silent> AN. :call targets#o('.NA')
onoremap <silent> Al. :call targets#o('.lA')
onoremap <silent> An. :call targets#o('.nA')
onoremap <silent> A. :call targets#o('.cA')
onoremap <silent> AL, :call targets#o(',LA')
onoremap <silent> AN, :call targets#o(',NA')
onoremap <silent> Al, :call targets#o(',lA')
onoremap <silent> An, :call targets#o(',nA')
onoremap <silent> A, :call targets#o(',cA')
onoremap <silent> AL` :call targets#o('`LA')
onoremap <silent> AN` :call targets#o('`NA')
onoremap <silent> Al` :call targets#o('`lA')
onoremap <silent> An` :call targets#o('`nA')
onoremap <silent> A` :call targets#o('`cA')
onoremap <silent> AL' :call targets#o('''LA')
onoremap <silent> AN' :call targets#o('''NA')
onoremap <silent> Al' :call targets#o('''lA')
onoremap <silent> An' :call targets#o('''nA')
onoremap <silent> A' :call targets#o('''cA')
onoremap <silent> AL" :call targets#o('"LA')
onoremap <silent> AN" :call targets#o('"NA')
onoremap <silent> Al" :call targets#o('"lA')
onoremap <silent> An" :call targets#o('"nA')
onoremap <silent> A" :call targets#o('"cA')
onoremap <silent> Alt :call targets#o('tlA')
onoremap <silent> Ant :call targets#o('tnA')
onoremap <silent> At :call targets#o('tcA')
onoremap <silent> Al> :call targets#o('>lA')
onoremap <silent> An> :call targets#o('>nA')
onoremap <silent> A> :call targets#o('>cA')
onoremap <silent> Al< :call targets#o('<lA')
onoremap <silent> An< :call targets#o('<nA')
onoremap <silent> A< :call targets#o('<cA')
onoremap <silent> Al] :call targets#o(']lA')
onoremap <silent> An] :call targets#o(']nA')
onoremap <silent> A] :call targets#o(']cA')
onoremap <silent> Al[ :call targets#o('[lA')
onoremap <silent> An[ :call targets#o('[nA')
onoremap <silent> A[ :call targets#o('[cA')
onoremap <silent> AlB :call targets#o('BlA')
onoremap <silent> AnB :call targets#o('BnA')
onoremap <silent> AB :call targets#o('BcA')
onoremap <silent> Al} :call targets#o('}lA')
onoremap <silent> An} :call targets#o('}nA')
onoremap <silent> A} :call targets#o('}cA')
onoremap <silent> Al{ :call targets#o('{lA')
onoremap <silent> An{ :call targets#o('{nA')
onoremap <silent> A{ :call targets#o('{cA')
onoremap <silent> Alb :call targets#o('blA')
onoremap <silent> Anb :call targets#o('bnA')
onoremap <silent> Ab :call targets#o('bcA')
onoremap <silent> Al) :call targets#o(')lA')
onoremap <silent> An) :call targets#o(')nA')
onoremap <silent> A) :call targets#o(')cA')
onoremap <silent> Al( :call targets#o('(lA')
onoremap <silent> An( :call targets#o('(nA')
onoremap <silent> A( :call targets#o('(cA')
xnoremap <silent> <expr> I targets#e('I')
onoremap <silent> Ila :call targets#o('alI')
onoremap <silent> Ina :call targets#o('anI')
onoremap <silent> Ia :call targets#o('acI')
onoremap <silent> IL$ :call targets#o('$LI')
onoremap <silent> IN$ :call targets#o('$NI')
onoremap <silent> Il$ :call targets#o('$lI')
onoremap <silent> In$ :call targets#o('$nI')
onoremap <silent> I$ :call targets#o('$cI')
onoremap <silent> IL& :call targets#o('&LI')
onoremap <silent> IN& :call targets#o('&NI')
onoremap <silent> Il& :call targets#o('&lI')
onoremap <silent> In& :call targets#o('&nI')
onoremap <silent> I& :call targets#o('&cI')
onoremap <silent> IL| :call targets#o('|LI')
onoremap <silent> IN| :call targets#o('|NI')
onoremap <silent> Il| :call targets#o('|lI')
onoremap <silent> In| :call targets#o('|nI')
onoremap <silent> I| :call targets#o('|cI')
onoremap <silent> IL\ :call targets#o('\LI')
onoremap <silent> IN\ :call targets#o('\NI')
onoremap <silent> Il\ :call targets#o('\lI')
onoremap <silent> In\ :call targets#o('\nI')
onoremap <silent> I\ :call targets#o('\cI')
onoremap <silent> IL/ :call targets#o('/LI')
onoremap <silent> IN/ :call targets#o('/NI')
onoremap <silent> Il/ :call targets#o('/lI')
onoremap <silent> In/ :call targets#o('/nI')
onoremap <silent> I/ :call targets#o('/cI')
onoremap <silent> IL# :call targets#o('#LI')
onoremap <silent> IN# :call targets#o('#NI')
onoremap <silent> Il# :call targets#o('#lI')
onoremap <silent> In# :call targets#o('#nI')
onoremap <silent> I# :call targets#o('#cI')
onoremap <silent> IL* :call targets#o('*LI')
onoremap <silent> IN* :call targets#o('*NI')
onoremap <silent> Il* :call targets#o('*lI')
onoremap <silent> In* :call targets#o('*nI')
onoremap <silent> I* :call targets#o('*cI')
onoremap <silent> IL_ :call targets#o('_LI')
onoremap <silent> IN_ :call targets#o('_NI')
onoremap <silent> Il_ :call targets#o('_lI')
onoremap <silent> In_ :call targets#o('_nI')
onoremap <silent> I_ :call targets#o('_cI')
onoremap <silent> IL~ :call targets#o('~LI')
onoremap <silent> IN~ :call targets#o('~NI')
onoremap <silent> Il~ :call targets#o('~lI')
onoremap <silent> In~ :call targets#o('~nI')
onoremap <silent> I~ :call targets#o('~cI')
onoremap <silent> IL= :call targets#o('=LI')
onoremap <silent> IN= :call targets#o('=NI')
onoremap <silent> Il= :call targets#o('=lI')
onoremap <silent> In= :call targets#o('=nI')
onoremap <silent> I= :call targets#o('=cI')
onoremap <silent> IL- :call targets#o('-LI')
onoremap <silent> IN- :call targets#o('-NI')
onoremap <silent> Il- :call targets#o('-lI')
onoremap <silent> In- :call targets#o('-nI')
onoremap <silent> I- :call targets#o('-cI')
onoremap <silent> IL+ :call targets#o('+LI')
onoremap <silent> IN+ :call targets#o('+NI')
onoremap <silent> Il+ :call targets#o('+lI')
onoremap <silent> In+ :call targets#o('+nI')
onoremap <silent> I+ :call targets#o('+cI')
onoremap <silent> IL: :call targets#o(':LI')
onoremap <silent> IN: :call targets#o(':NI')
onoremap <silent> Il: :call targets#o(':lI')
onoremap <silent> In: :call targets#o(':nI')
onoremap <silent> I: :call targets#o(':cI')
onoremap <silent> IL; :call targets#o(';LI')
onoremap <silent> IN; :call targets#o(';NI')
onoremap <silent> Il; :call targets#o(';lI')
onoremap <silent> In; :call targets#o(';nI')
onoremap <silent> I; :call targets#o(';cI')
onoremap <silent> IL. :call targets#o('.LI')
onoremap <silent> IN. :call targets#o('.NI')
onoremap <silent> Il. :call targets#o('.lI')
onoremap <silent> In. :call targets#o('.nI')
onoremap <silent> I. :call targets#o('.cI')
onoremap <silent> IL, :call targets#o(',LI')
onoremap <silent> IN, :call targets#o(',NI')
onoremap <silent> Il, :call targets#o(',lI')
onoremap <silent> In, :call targets#o(',nI')
onoremap <silent> I, :call targets#o(',cI')
onoremap <silent> IL` :call targets#o('`LI')
onoremap <silent> IN` :call targets#o('`NI')
onoremap <silent> Il` :call targets#o('`lI')
onoremap <silent> In` :call targets#o('`nI')
onoremap <silent> I` :call targets#o('`cI')
onoremap <silent> IL' :call targets#o('''LI')
onoremap <silent> IN' :call targets#o('''NI')
onoremap <silent> Il' :call targets#o('''lI')
onoremap <silent> In' :call targets#o('''nI')
onoremap <silent> I' :call targets#o('''cI')
onoremap <silent> IL" :call targets#o('"LI')
onoremap <silent> IN" :call targets#o('"NI')
onoremap <silent> Il" :call targets#o('"lI')
onoremap <silent> In" :call targets#o('"nI')
onoremap <silent> I" :call targets#o('"cI')
onoremap <silent> Ilt :call targets#o('tlI')
onoremap <silent> Int :call targets#o('tnI')
onoremap <silent> It :call targets#o('tcI')
onoremap <silent> Il> :call targets#o('>lI')
onoremap <silent> In> :call targets#o('>nI')
onoremap <silent> I> :call targets#o('>cI')
onoremap <silent> Il< :call targets#o('<lI')
onoremap <silent> In< :call targets#o('<nI')
onoremap <silent> I< :call targets#o('<cI')
onoremap <silent> Il] :call targets#o(']lI')
onoremap <silent> In] :call targets#o(']nI')
onoremap <silent> I] :call targets#o(']cI')
onoremap <silent> Il[ :call targets#o('[lI')
onoremap <silent> In[ :call targets#o('[nI')
onoremap <silent> I[ :call targets#o('[cI')
onoremap <silent> IlB :call targets#o('BlI')
onoremap <silent> InB :call targets#o('BnI')
onoremap <silent> IB :call targets#o('BcI')
onoremap <silent> Il} :call targets#o('}lI')
onoremap <silent> In} :call targets#o('}nI')
onoremap <silent> I} :call targets#o('}cI')
onoremap <silent> Il{ :call targets#o('{lI')
onoremap <silent> In{ :call targets#o('{nI')
onoremap <silent> I{ :call targets#o('{cI')
onoremap <silent> Ilb :call targets#o('blI')
onoremap <silent> Inb :call targets#o('bnI')
onoremap <silent> Ib :call targets#o('bcI')
onoremap <silent> Il) :call targets#o(')lI')
onoremap <silent> In) :call targets#o(')nI')
onoremap <silent> I) :call targets#o(')cI')
onoremap <silent> Il( :call targets#o('(lI')
onoremap <silent> In( :call targets#o('(nI')
onoremap <silent> I( :call targets#o('(cI')
nnoremap J mzJ`z
nnoremap K :call investigate#Investigate()
nnoremap N Nzzzv
xmap S <Plug>VSurround
nmap [c <Plug>GitGutterPrevHunk
vmap [% [%m'gv``
nmap [xx <Plug>unimpaired_line_xml_encode
xmap [x <Plug>unimpaired_xml_encode
nmap [x <Plug>unimpaired_xml_encode
nmap [uu <Plug>unimpaired_line_url_encode
xmap [u <Plug>unimpaired_url_encode
nmap [u <Plug>unimpaired_url_encode
nmap [yy <Plug>unimpaired_line_string_encode
xmap [y <Plug>unimpaired_string_encode
nmap [y <Plug>unimpaired_string_encode
nmap [p <Plug>unimpairedPutAbove
nnoremap [ov :set virtualedit+=all
nnoremap [ox :set cursorline cursorcolumn
nnoremap [ow :set wrap
nnoremap [os :set spell
nnoremap [or :set relativenumber
nnoremap [on :set number
nnoremap [ol :set list
nnoremap [oi :set ignorecase
nnoremap [oh :set hlsearch
nnoremap [od :diffthis
nnoremap [ou :set cursorcolumn
nnoremap [oc :set cursorline
nnoremap [ob :set background=light
xmap [e <Plug>unimpairedMoveSelectionUp
nmap [e <Plug>unimpairedMoveUp
nmap [  <Plug>unimpairedBlankUp
omap [n <Plug>unimpairedContextPrevious
nmap [n <Plug>unimpairedContextPrevious
nmap [o <Plug>unimpairedOPrevious
nmap [f <Plug>unimpairedDirectoryPrevious
nmap <silent> [T <Plug>unimpairedTFirst
nmap <silent> [t <Plug>unimpairedTPrevious
nmap <silent> [ <Plug>unimpairedQPFile
nmap <silent> [Q <Plug>unimpairedQFirst
nmap <silent> [q <Plug>unimpairedQPrevious
nmap <silent> [ <Plug>unimpairedLPFile
nmap <silent> [L <Plug>unimpairedLFirst
nmap <silent> [l <Plug>unimpairedLPrevious
nmap <silent> [B <Plug>unimpairedBFirst
nmap <silent> [b <Plug>unimpairedBPrevious
nmap <silent> [A <Plug>unimpairedAFirst
nmap <silent> [a <Plug>unimpairedAPrevious
nnoremap <silent> \  :call IsWhiteLine()
nnoremap \= gg=G
nmap ]c <Plug>GitGutterNextHunk
vmap ]% ]%m'gv``
nmap ]xx <Plug>unimpaired_line_xml_decode
xmap ]x <Plug>unimpaired_xml_decode
nmap ]x <Plug>unimpaired_xml_decode
nmap ]uu <Plug>unimpaired_line_url_decode
xmap ]u <Plug>unimpaired_url_decode
nmap ]u <Plug>unimpaired_url_decode
nmap ]yy <Plug>unimpaired_line_string_decode
xmap ]y <Plug>unimpaired_string_decode
nmap ]y <Plug>unimpaired_string_decode
nmap ]p <Plug>unimpairedPutBelow
nnoremap ]ov :set virtualedit-=all
nnoremap ]ox :set nocursorline nocursorcolumn
nnoremap ]ow :set nowrap
nnoremap ]os :set nospell
nnoremap ]or :set norelativenumber
nnoremap ]on :set nonumber
nnoremap ]ol :set nolist
nnoremap ]oi :set noignorecase
nnoremap ]oh :set nohlsearch
nnoremap ]od :diffoff
nnoremap ]ou :set nocursorcolumn
nnoremap ]oc :set nocursorline
nnoremap ]ob :set background=dark
xmap ]e <Plug>unimpairedMoveSelectionDown
nmap ]e <Plug>unimpairedMoveDown
nmap ]  <Plug>unimpairedBlankDown
omap ]n <Plug>unimpairedContextNext
nmap ]n <Plug>unimpairedContextNext
nmap ]o <Plug>unimpairedONext
nmap ]f <Plug>unimpairedDirectoryNext
nmap <silent> ]T <Plug>unimpairedTLast
nmap <silent> ]t <Plug>unimpairedTNext
nmap <silent> ] <Plug>unimpairedQNFile
nmap <silent> ]Q <Plug>unimpairedQLast
nmap <silent> ]q <Plug>unimpairedQNext
nmap <silent> ] <Plug>unimpairedLNFile
nmap <silent> ]L <Plug>unimpairedLLast
nmap <silent> ]l <Plug>unimpairedLNext
nmap <silent> ]B <Plug>unimpairedBLast
nmap <silent> ]b <Plug>unimpairedBNext
nmap <silent> ]A <Plug>unimpairedALast
nmap <silent> ]a <Plug>unimpairedANext
vmap a% [%v]%
xnoremap <silent> <expr> a targets#e('a')
onoremap <silent> ala :call targets#o('ala')
onoremap <silent> ana :call targets#o('ana')
onoremap <silent> aa :call targets#o('aca')
onoremap <silent> aL$ :call targets#o('$La')
onoremap <silent> aN$ :call targets#o('$Na')
onoremap <silent> al$ :call targets#o('$la')
onoremap <silent> an$ :call targets#o('$na')
onoremap <silent> a$ :call targets#o('$ca')
onoremap <silent> aL& :call targets#o('&La')
onoremap <silent> aN& :call targets#o('&Na')
onoremap <silent> al& :call targets#o('&la')
onoremap <silent> an& :call targets#o('&na')
onoremap <silent> a& :call targets#o('&ca')
onoremap <silent> aL| :call targets#o('|La')
onoremap <silent> aN| :call targets#o('|Na')
onoremap <silent> al| :call targets#o('|la')
onoremap <silent> an| :call targets#o('|na')
onoremap <silent> a| :call targets#o('|ca')
onoremap <silent> aL\ :call targets#o('\La')
onoremap <silent> aN\ :call targets#o('\Na')
onoremap <silent> al\ :call targets#o('\la')
onoremap <silent> an\ :call targets#o('\na')
onoremap <silent> a\ :call targets#o('\ca')
onoremap <silent> aL/ :call targets#o('/La')
onoremap <silent> aN/ :call targets#o('/Na')
onoremap <silent> al/ :call targets#o('/la')
onoremap <silent> an/ :call targets#o('/na')
onoremap <silent> a/ :call targets#o('/ca')
onoremap <silent> aL# :call targets#o('#La')
onoremap <silent> aN# :call targets#o('#Na')
onoremap <silent> al# :call targets#o('#la')
onoremap <silent> an# :call targets#o('#na')
onoremap <silent> a# :call targets#o('#ca')
onoremap <silent> aL* :call targets#o('*La')
onoremap <silent> aN* :call targets#o('*Na')
onoremap <silent> al* :call targets#o('*la')
onoremap <silent> an* :call targets#o('*na')
onoremap <silent> a* :call targets#o('*ca')
onoremap <silent> aL_ :call targets#o('_La')
onoremap <silent> aN_ :call targets#o('_Na')
onoremap <silent> al_ :call targets#o('_la')
onoremap <silent> an_ :call targets#o('_na')
onoremap <silent> a_ :call targets#o('_ca')
onoremap <silent> aL~ :call targets#o('~La')
onoremap <silent> aN~ :call targets#o('~Na')
onoremap <silent> al~ :call targets#o('~la')
onoremap <silent> an~ :call targets#o('~na')
onoremap <silent> a~ :call targets#o('~ca')
onoremap <silent> aL= :call targets#o('=La')
onoremap <silent> aN= :call targets#o('=Na')
onoremap <silent> al= :call targets#o('=la')
onoremap <silent> an= :call targets#o('=na')
onoremap <silent> a= :call targets#o('=ca')
onoremap <silent> aL- :call targets#o('-La')
onoremap <silent> aN- :call targets#o('-Na')
onoremap <silent> al- :call targets#o('-la')
onoremap <silent> an- :call targets#o('-na')
onoremap <silent> a- :call targets#o('-ca')
onoremap <silent> aL+ :call targets#o('+La')
onoremap <silent> aN+ :call targets#o('+Na')
onoremap <silent> al+ :call targets#o('+la')
onoremap <silent> an+ :call targets#o('+na')
onoremap <silent> a+ :call targets#o('+ca')
onoremap <silent> aL: :call targets#o(':La')
onoremap <silent> aN: :call targets#o(':Na')
onoremap <silent> al: :call targets#o(':la')
onoremap <silent> an: :call targets#o(':na')
onoremap <silent> a: :call targets#o(':ca')
onoremap <silent> aL; :call targets#o(';La')
onoremap <silent> aN; :call targets#o(';Na')
onoremap <silent> al; :call targets#o(';la')
onoremap <silent> an; :call targets#o(';na')
onoremap <silent> a; :call targets#o(';ca')
onoremap <silent> aL. :call targets#o('.La')
onoremap <silent> aN. :call targets#o('.Na')
onoremap <silent> al. :call targets#o('.la')
onoremap <silent> an. :call targets#o('.na')
onoremap <silent> a. :call targets#o('.ca')
onoremap <silent> aL, :call targets#o(',La')
onoremap <silent> aN, :call targets#o(',Na')
onoremap <silent> al, :call targets#o(',la')
onoremap <silent> an, :call targets#o(',na')
onoremap <silent> a, :call targets#o(',ca')
onoremap <silent> aL` :call targets#o('`La')
onoremap <silent> aN` :call targets#o('`Na')
onoremap <silent> al` :call targets#o('`la')
onoremap <silent> an` :call targets#o('`na')
onoremap <silent> a` :call targets#o('`ca')
onoremap <silent> aL' :call targets#o('''La')
onoremap <silent> aN' :call targets#o('''Na')
onoremap <silent> al' :call targets#o('''la')
onoremap <silent> an' :call targets#o('''na')
onoremap <silent> a' :call targets#o('''ca')
onoremap <silent> aL" :call targets#o('"La')
onoremap <silent> aN" :call targets#o('"Na')
onoremap <silent> al" :call targets#o('"la')
onoremap <silent> an" :call targets#o('"na')
onoremap <silent> a" :call targets#o('"ca')
onoremap <silent> alt :call targets#o('tla')
onoremap <silent> ant :call targets#o('tna')
onoremap <silent> at :call targets#o('tca')
onoremap <silent> al> :call targets#o('>la')
onoremap <silent> an> :call targets#o('>na')
onoremap <silent> a> :call targets#o('>ca')
onoremap <silent> al< :call targets#o('<la')
onoremap <silent> an< :call targets#o('<na')
onoremap <silent> a< :call targets#o('<ca')
onoremap <silent> al] :call targets#o(']la')
onoremap <silent> an] :call targets#o(']na')
onoremap <silent> a] :call targets#o(']ca')
onoremap <silent> al[ :call targets#o('[la')
onoremap <silent> an[ :call targets#o('[na')
onoremap <silent> a[ :call targets#o('[ca')
onoremap <silent> alB :call targets#o('Bla')
onoremap <silent> anB :call targets#o('Bna')
onoremap <silent> aB :call targets#o('Bca')
onoremap <silent> al} :call targets#o('}la')
onoremap <silent> an} :call targets#o('}na')
onoremap <silent> a} :call targets#o('}ca')
onoremap <silent> al{ :call targets#o('{la')
onoremap <silent> an{ :call targets#o('{na')
onoremap <silent> a{ :call targets#o('{ca')
onoremap <silent> alb :call targets#o('bla')
onoremap <silent> anb :call targets#o('bna')
onoremap <silent> ab :call targets#o('bca')
onoremap <silent> al) :call targets#o(')la')
onoremap <silent> an) :call targets#o(')na')
onoremap <silent> a) :call targets#o(')ca')
onoremap <silent> al( :call targets#o('(la')
onoremap <silent> an( :call targets#o('(na')
onoremap <silent> a( :call targets#o('(ca')
nnoremap cov :set =(&virtualedit =~# "all") ? 'virtualedit-=all' : 'virtualedit+=all'
nnoremap cox :set =&cursorline && &cursorcolumn ? 'nocursorline nocursorcolumn' : 'cursorline cursorcolumn'
nnoremap cod :=&diff ? 'diffoff' : 'diffthis'
nnoremap cob :set background==&background == 'dark' ? 'light' : 'dark'
nmap cs <Plug>Csurround
nmap cr <Plug>Coerce
nmap ds <Plug>Dsurround
nmap d <Plug>SpeedDatingNowLocal
nmap d <Plug>SpeedDatingNowUTC
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nnoremap g, g,zz
nnoremap g; g;zz
nnoremap g# g#zzzv
nnoremap g* g*zzzv
xmap <silent> i,e <Plug>CamelCaseMotion_ie
xmap <silent> i,b <Plug>CamelCaseMotion_ib
xmap <silent> i,w <Plug>CamelCaseMotion_iw
omap <silent> i,e <Plug>CamelCaseMotion_ie
omap <silent> i,b <Plug>CamelCaseMotion_ib
omap <silent> i,w <Plug>CamelCaseMotion_iw
xnoremap <silent> <expr> i targets#e('i')
onoremap <silent> ila :call targets#o('ali')
onoremap <silent> ina :call targets#o('ani')
onoremap <silent> ia :call targets#o('aci')
onoremap <silent> iL$ :call targets#o('$Li')
onoremap <silent> iN$ :call targets#o('$Ni')
onoremap <silent> il$ :call targets#o('$li')
onoremap <silent> in$ :call targets#o('$ni')
onoremap <silent> i$ :call targets#o('$ci')
onoremap <silent> iL& :call targets#o('&Li')
onoremap <silent> iN& :call targets#o('&Ni')
onoremap <silent> il& :call targets#o('&li')
onoremap <silent> in& :call targets#o('&ni')
onoremap <silent> i& :call targets#o('&ci')
onoremap <silent> iL| :call targets#o('|Li')
onoremap <silent> iN| :call targets#o('|Ni')
onoremap <silent> il| :call targets#o('|li')
onoremap <silent> in| :call targets#o('|ni')
onoremap <silent> i| :call targets#o('|ci')
onoremap <silent> iL\ :call targets#o('\Li')
onoremap <silent> iN\ :call targets#o('\Ni')
onoremap <silent> il\ :call targets#o('\li')
onoremap <silent> in\ :call targets#o('\ni')
onoremap <silent> i\ :call targets#o('\ci')
onoremap <silent> iL/ :call targets#o('/Li')
onoremap <silent> iN/ :call targets#o('/Ni')
onoremap <silent> il/ :call targets#o('/li')
onoremap <silent> in/ :call targets#o('/ni')
onoremap <silent> i/ :call targets#o('/ci')
onoremap <silent> iL# :call targets#o('#Li')
onoremap <silent> iN# :call targets#o('#Ni')
onoremap <silent> il# :call targets#o('#li')
onoremap <silent> in# :call targets#o('#ni')
onoremap <silent> i# :call targets#o('#ci')
onoremap <silent> iL* :call targets#o('*Li')
onoremap <silent> iN* :call targets#o('*Ni')
onoremap <silent> il* :call targets#o('*li')
onoremap <silent> in* :call targets#o('*ni')
onoremap <silent> i* :call targets#o('*ci')
onoremap <silent> iL_ :call targets#o('_Li')
onoremap <silent> iN_ :call targets#o('_Ni')
onoremap <silent> il_ :call targets#o('_li')
onoremap <silent> in_ :call targets#o('_ni')
onoremap <silent> i_ :call targets#o('_ci')
onoremap <silent> iL~ :call targets#o('~Li')
onoremap <silent> iN~ :call targets#o('~Ni')
onoremap <silent> il~ :call targets#o('~li')
onoremap <silent> in~ :call targets#o('~ni')
onoremap <silent> i~ :call targets#o('~ci')
onoremap <silent> iL= :call targets#o('=Li')
onoremap <silent> iN= :call targets#o('=Ni')
onoremap <silent> il= :call targets#o('=li')
onoremap <silent> in= :call targets#o('=ni')
onoremap <silent> i= :call targets#o('=ci')
onoremap <silent> iL- :call targets#o('-Li')
onoremap <silent> iN- :call targets#o('-Ni')
onoremap <silent> il- :call targets#o('-li')
onoremap <silent> in- :call targets#o('-ni')
onoremap <silent> i- :call targets#o('-ci')
onoremap <silent> iL+ :call targets#o('+Li')
onoremap <silent> iN+ :call targets#o('+Ni')
onoremap <silent> il+ :call targets#o('+li')
onoremap <silent> in+ :call targets#o('+ni')
onoremap <silent> i+ :call targets#o('+ci')
onoremap <silent> iL: :call targets#o(':Li')
onoremap <silent> iN: :call targets#o(':Ni')
onoremap <silent> il: :call targets#o(':li')
onoremap <silent> in: :call targets#o(':ni')
onoremap <silent> i: :call targets#o(':ci')
onoremap <silent> iL; :call targets#o(';Li')
onoremap <silent> iN; :call targets#o(';Ni')
onoremap <silent> il; :call targets#o(';li')
onoremap <silent> in; :call targets#o(';ni')
onoremap <silent> i; :call targets#o(';ci')
onoremap <silent> iL. :call targets#o('.Li')
onoremap <silent> iN. :call targets#o('.Ni')
onoremap <silent> il. :call targets#o('.li')
onoremap <silent> in. :call targets#o('.ni')
onoremap <silent> i. :call targets#o('.ci')
onoremap <silent> iL, :call targets#o(',Li')
onoremap <silent> iN, :call targets#o(',Ni')
onoremap <silent> il, :call targets#o(',li')
onoremap <silent> in, :call targets#o(',ni')
onoremap <silent> i, :call targets#o(',ci')
onoremap <silent> iL` :call targets#o('`Li')
onoremap <silent> iN` :call targets#o('`Ni')
onoremap <silent> il` :call targets#o('`li')
onoremap <silent> in` :call targets#o('`ni')
onoremap <silent> i` :call targets#o('`ci')
onoremap <silent> iL' :call targets#o('''Li')
onoremap <silent> iN' :call targets#o('''Ni')
onoremap <silent> il' :call targets#o('''li')
onoremap <silent> in' :call targets#o('''ni')
onoremap <silent> i' :call targets#o('''ci')
onoremap <silent> iL" :call targets#o('"Li')
onoremap <silent> iN" :call targets#o('"Ni')
onoremap <silent> il" :call targets#o('"li')
onoremap <silent> in" :call targets#o('"ni')
onoremap <silent> i" :call targets#o('"ci')
onoremap <silent> ilt :call targets#o('tli')
onoremap <silent> int :call targets#o('tni')
onoremap <silent> it :call targets#o('tci')
onoremap <silent> il> :call targets#o('>li')
onoremap <silent> in> :call targets#o('>ni')
onoremap <silent> i> :call targets#o('>ci')
onoremap <silent> il< :call targets#o('<li')
onoremap <silent> in< :call targets#o('<ni')
onoremap <silent> i< :call targets#o('<ci')
onoremap <silent> il] :call targets#o(']li')
onoremap <silent> in] :call targets#o(']ni')
onoremap <silent> i] :call targets#o(']ci')
onoremap <silent> il[ :call targets#o('[li')
onoremap <silent> in[ :call targets#o('[ni')
onoremap <silent> i[ :call targets#o('[ci')
onoremap <silent> ilB :call targets#o('Bli')
onoremap <silent> inB :call targets#o('Bni')
onoremap <silent> iB :call targets#o('Bci')
onoremap <silent> il} :call targets#o('}li')
onoremap <silent> in} :call targets#o('}ni')
onoremap <silent> i} :call targets#o('}ci')
onoremap <silent> il{ :call targets#o('{li')
onoremap <silent> in{ :call targets#o('{ni')
onoremap <silent> i{ :call targets#o('{ci')
onoremap <silent> ilb :call targets#o('bli')
onoremap <silent> inb :call targets#o('bni')
onoremap <silent> ib :call targets#o('bci')
onoremap <silent> il) :call targets#o(')li')
onoremap <silent> in) :call targets#o(')ni')
onoremap <silent> i) :call targets#o(')ci')
onoremap <silent> il( :call targets#o('(li')
onoremap <silent> in( :call targets#o('(ni')
onoremap <silent> i( :call targets#o('(ci')
vnoremap j gj
nnoremap j gj
vnoremap k gk
nnoremap k gk
nnoremap n nzzzv
nnoremap vaa ggvGg_
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
vnoremap <Plug>(emmet-code-pretty) :call emmet#codePretty()
vnoremap <Plug>(emmet-merge-lines) :call emmet#mergeLines()
nnoremap <Plug>(emmet-anchorize-summary) :call emmet#anchorizeURL(1)
nnoremap <Plug>(emmet-anchorize-url) :call emmet#anchorizeURL(0)
nnoremap <Plug>(emmet-remove-tag) :call emmet#removeTag()
nnoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
nnoremap <Plug>(emmet-toggle-comment) :call emmet#toggleComment()
nnoremap <Plug>(emmet-image-size) :call emmet#imageSize()
nnoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
nnoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
vnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-2)
nnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
vnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(2)
nnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nnoremap <Plug>(emmet-update-tag) :call emmet#updateTag()
nnoremap <Plug>(emmet-expand-word) :call emmet#expandAbbr(1,"")
vnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(2,"")
nnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(3,"")
nnoremap <silent> <Plug>GitGutterPreviewHunk :GitGutterPreviewHunk
nnoremap <silent> <Plug>GitGutterRevertHunk :GitGutterRevertHunk
nnoremap <silent> <Plug>GitGutterStageHunk :GitGutterStageHunk
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\"
xnoremap <silent> <Plug>(neosnippet_register_oneshot_snippet) :call neosnippet#mappings#_register_oneshot_snippet()
xnoremap <silent> <Plug>(neosnippet_expand_target) :call neosnippet#mappings#_expand_target()
xnoremap <silent> <Plug>(neosnippet_get_selected_text) :call neosnippet#helpers#get_selected_text(visualmode(), 1)
snoremap <silent> <expr> <Plug>(neosnippet_jump) neosnippet#mappings#jump_impl()
snoremap <silent> <expr> <Plug>(neosnippet_expand) neosnippet#mappings#expand_impl()
snoremap <silent> <expr> <Plug>(neosnippet_jump_or_expand) neosnippet#mappings#jump_or_expand_impl()
snoremap <silent> <expr> <Plug>(neosnippet_expand_or_jump) neosnippet#mappings#expand_or_jump_impl()
vnoremap <silent> <Plug>CamelCaseMotion_ie :call camelcasemotion#InnerMotion('e',v:count1)
vnoremap <silent> <Plug>CamelCaseMotion_ib :call camelcasemotion#InnerMotion('b',v:count1)
vnoremap <silent> <Plug>CamelCaseMotion_iw :call camelcasemotion#InnerMotion('w',v:count1)
onoremap <silent> <Plug>CamelCaseMotion_ie :call camelcasemotion#InnerMotion('e',v:count1)
onoremap <silent> <Plug>CamelCaseMotion_ib :call camelcasemotion#InnerMotion('b',v:count1)
onoremap <silent> <Plug>CamelCaseMotion_iw :call camelcasemotion#InnerMotion('w',v:count1)
vnoremap <silent> <Plug>CamelCaseMotion_e :call camelcasemotion#Motion('e',v:count1,'v')
vnoremap <silent> <Plug>CamelCaseMotion_b :call camelcasemotion#Motion('b',v:count1,'v')
vnoremap <silent> <Plug>CamelCaseMotion_w :call camelcasemotion#Motion('w',v:count1,'v')
onoremap <silent> <Plug>CamelCaseMotion_e :call camelcasemotion#Motion('e',v:count1,'o')
onoremap <silent> <Plug>CamelCaseMotion_b :call camelcasemotion#Motion('b',v:count1,'o')
onoremap <silent> <Plug>CamelCaseMotion_w :call camelcasemotion#Motion('w',v:count1,'o')
nnoremap <silent> <Plug>CamelCaseMotion_e :call camelcasemotion#Motion('e',v:count1,'n')
nnoremap <silent> <Plug>CamelCaseMotion_b :call camelcasemotion#Motion('b',v:count1,'n')
nnoremap <silent> <Plug>CamelCaseMotion_w :call camelcasemotion#Motion('w',v:count1,'n')
map <silent> <Plug>(easymotion-prefix)N <Plug>(easymotion-N)
map <silent> <Plug>(easymotion-prefix)n <Plug>(easymotion-n)
map <silent> <Plug>(easymotion-prefix)k <Plug>(easymotion-k)
map <silent> <Plug>(easymotion-prefix)j <Plug>(easymotion-j)
map <silent> <Plug>(easymotion-prefix)gE <Plug>(easymotion-gE)
map <silent> <Plug>(easymotion-prefix)ge <Plug>(easymotion-ge)
map <silent> <Plug>(easymotion-prefix)E <Plug>(easymotion-E)
map <silent> <Plug>(easymotion-prefix)e <Plug>(easymotion-e)
map <silent> <Plug>(easymotion-prefix)B <Plug>(easymotion-B)
map <silent> <Plug>(easymotion-prefix)b <Plug>(easymotion-b)
map <silent> <Plug>(easymotion-prefix)W <Plug>(easymotion-W)
map <silent> <Plug>(easymotion-prefix)w <Plug>(easymotion-w)
map <silent> <Plug>(easymotion-prefix)T <Plug>(easymotion-T)
map <silent> <Plug>(easymotion-prefix)t <Plug>(easymotion-t)
map <silent> <Plug>(easymotion-prefix)s <Plug>(easymotion-s)
map <silent> <Plug>(easymotion-prefix)F <Plug>(easymotion-F)
map <silent> <Plug>(easymotion-prefix)f <Plug>(easymotion-f)
xnoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(1)
nnoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
snoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
onoremap <silent> <Plug>(easymotion-activate) :call EasyMotion#activate(0)
xnoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(1,2)
nnoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
snoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
onoremap <silent> <Plug>(easymotion-lineanywhere) :call EasyMotion#LineAnywhere(0,2)
xnoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(1,1)
nnoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
snoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
onoremap <silent> <Plug>(easymotion-linebackward) :call EasyMotion#LineAnywhere(0,1)
xnoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(1,0)
nnoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
snoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
onoremap <silent> <Plug>(easymotion-lineforward) :call EasyMotion#LineAnywhere(0,0)
xnoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(1,2)
nnoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
snoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
onoremap <silent> <Plug>(easymotion-bd-el) :call EasyMotion#EL(0,2)
xnoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(1,1)
nnoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
snoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
onoremap <silent> <Plug>(easymotion-gel) :call EasyMotion#EL(0,1)
xnoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(1,0)
nnoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
snoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
onoremap <silent> <Plug>(easymotion-el) :call EasyMotion#EL(0,0)
xnoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(1,2)
nnoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
snoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
onoremap <silent> <Plug>(easymotion-bd-wl) :call EasyMotion#WBL(0,2)
xnoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(1,1)
nnoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
snoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
onoremap <silent> <Plug>(easymotion-bl) :call EasyMotion#WBL(0,1)
xnoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(1,0)
nnoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
snoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
onoremap <silent> <Plug>(easymotion-wl) :call EasyMotion#WBL(0,0)
xnoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(1,1)
nnoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
snoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
onoremap <silent> <Plug>(easymotion-prev) :call EasyMotion#NextPrevious(0,1)
xnoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(1,0)
nnoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
snoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
onoremap <silent> <Plug>(easymotion-next) :call EasyMotion#NextPrevious(0,0)
noremap <silent> <Plug>(easymotion-dotrepeat) :call EasyMotion#DotRepeat()
xnoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(1)
nnoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
snoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
onoremap <silent> <Plug>(easymotion-repeat) :call EasyMotion#Repeat(0)
xnoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(1,2)
nnoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
snoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
onoremap <silent> <Plug>(easymotion-jumptoanywhere) :call EasyMotion#JumpToAnywhere(0,2)
xnoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(1,2,0)
nnoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
snoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
onoremap <silent> <Plug>(easymotion-bd-n) :call EasyMotion#Search(0,2,0)
xnoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(1,1,1)
nnoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
snoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
onoremap <silent> <Plug>(easymotion-vim-N) :call EasyMotion#Search(0,1,1)
xnoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(1,0,1)
nnoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
snoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
onoremap <silent> <Plug>(easymotion-vim-n) :call EasyMotion#Search(0,0,1)
xnoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(1,1,0)
nnoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
snoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
onoremap <silent> <Plug>(easymotion-N) :call EasyMotion#Search(0,1,0)
xnoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(1,0,0)
nnoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
snoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
onoremap <silent> <Plug>(easymotion-n) :call EasyMotion#Search(0,0,0)
xnoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(1,2)
nnoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
snoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
onoremap <silent> <Plug>(easymotion-eol-bd-jk) :call EasyMotion#Eol(0,2)
xnoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(1,1)
nnoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
snoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
onoremap <silent> <Plug>(easymotion-eol-k) :call EasyMotion#Eol(0,1)
xnoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(1,0)
nnoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
snoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
onoremap <silent> <Plug>(easymotion-eol-j) :call EasyMotion#Eol(0,0)
xnoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(1,2)
nnoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
snoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
onoremap <silent> <Plug>(easymotion-sol-bd-jk) :call EasyMotion#Sol(0,2)
xnoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(1,1)
nnoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
snoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
onoremap <silent> <Plug>(easymotion-sol-k) :call EasyMotion#Sol(0,1)
xnoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(1,0)
nnoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
snoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
onoremap <silent> <Plug>(easymotion-sol-j) :call EasyMotion#Sol(0,0)
xnoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(1,2)
nnoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
snoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
onoremap <silent> <Plug>(easymotion-bd-jk) :call EasyMotion#JK(0,2)
xnoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(1,1)
nnoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
snoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
onoremap <silent> <Plug>(easymotion-k) :call EasyMotion#JK(0,1)
xnoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(1,0)
nnoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
snoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
onoremap <silent> <Plug>(easymotion-j) :call EasyMotion#JK(0,0)
xnoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(1,2)
nnoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
snoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
onoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :call EasyMotion#EK(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(1,1)
nnoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
snoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
onoremap <silent> <Plug>(easymotion-iskeyword-ge) :call EasyMotion#EK(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(1,0)
nnoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
snoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
onoremap <silent> <Plug>(easymotion-iskeyword-e) :call EasyMotion#EK(0,0)
xnoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(1,2)
nnoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
snoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
onoremap <silent> <Plug>(easymotion-bd-E) :call EasyMotion#EW(0,2)
xnoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(1,1)
nnoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
snoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
onoremap <silent> <Plug>(easymotion-gE) :call EasyMotion#EW(0,1)
xnoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(1,0)
nnoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
snoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
onoremap <silent> <Plug>(easymotion-E) :call EasyMotion#EW(0,0)
xnoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(1,2)
nnoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
snoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
onoremap <silent> <Plug>(easymotion-bd-e) :call EasyMotion#E(0,2)
xnoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(1,1)
nnoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
snoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
onoremap <silent> <Plug>(easymotion-ge) :call EasyMotion#E(0,1)
xnoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(1,0)
nnoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
snoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
onoremap <silent> <Plug>(easymotion-e) :call EasyMotion#E(0,0)
xnoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(1,2)
nnoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
snoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
onoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :call EasyMotion#WBK(0,2)
xnoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(1,1)
nnoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
snoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
onoremap <silent> <Plug>(easymotion-iskeyword-b) :call EasyMotion#WBK(0,1)
xnoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(1,0)
nnoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
snoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
onoremap <silent> <Plug>(easymotion-iskeyword-w) :call EasyMotion#WBK(0,0)
xnoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(1,2)
nnoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
snoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
onoremap <silent> <Plug>(easymotion-bd-W) :call EasyMotion#WBW(0,2)
xnoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(1,1)
nnoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
snoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
onoremap <silent> <Plug>(easymotion-B) :call EasyMotion#WBW(0,1)
xnoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(1,0)
nnoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
snoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
onoremap <silent> <Plug>(easymotion-W) :call EasyMotion#WBW(0,0)
xnoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(1,2)
nnoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
snoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
onoremap <silent> <Plug>(easymotion-bd-w) :call EasyMotion#WB(0,2)
xnoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(1,1)
nnoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
snoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
onoremap <silent> <Plug>(easymotion-b) :call EasyMotion#WB(0,1)
xnoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(1,0)
nnoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
snoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
onoremap <silent> <Plug>(easymotion-w) :call EasyMotion#WB(0,0)
xnoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
snoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
onoremap <silent> <Plug>(easymotion-Tln) :call EasyMotion#TL(-1,0,1)
xnoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,1,0)
nnoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
snoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
onoremap <silent> <Plug>(easymotion-t2) :call EasyMotion#T(2,0,0)
xnoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,1,0)
nnoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
snoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
onoremap <silent> <Plug>(easymotion-t) :call EasyMotion#T(1,0,0)
xnoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,1,2)
nnoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
snoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
onoremap <silent> <Plug>(easymotion-s) :call EasyMotion#S(1,0,2)
xnoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,1,0)
nnoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
snoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
onoremap <silent> <Plug>(easymotion-tn) :call EasyMotion#T(-1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-t2) :call EasyMotion#T(2,0,2)
xnoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,1,0)
nnoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
snoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
onoremap <silent> <Plug>(easymotion-tl) :call EasyMotion#TL(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tn) :call EasyMotion#T(-1,0,2)
xnoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,1,0)
nnoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
snoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
onoremap <silent> <Plug>(easymotion-fn) :call EasyMotion#S(-1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tl) :call EasyMotion#TL(1,0,2)
xnoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,1,0)
nnoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
snoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
onoremap <silent> <Plug>(easymotion-fl) :call EasyMotion#SL(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-tl2) :call EasyMotion#TL(2,0,2)
xnoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fn) :call EasyMotion#S(-1,0,2)
xnoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,1,0)
nnoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
snoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
onoremap <silent> <Plug>(easymotion-f) :call EasyMotion#S(1,0,0)
xnoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fl) :call EasyMotion#SL(1,0,2)
xnoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,1,1)
nnoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
snoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
onoremap <silent> <Plug>(easymotion-Fl2) :call EasyMotion#SL(2,0,1)
xnoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,1,0)
nnoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
snoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
onoremap <silent> <Plug>(easymotion-tl2) :call EasyMotion#TL(2,0,0)
xnoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,1,0)
nnoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
snoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
onoremap <silent> <Plug>(easymotion-f2) :call EasyMotion#S(2,0,0)
xnoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
snoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
onoremap <silent> <Plug>(easymotion-Fln) :call EasyMotion#SL(-1,0,1)
xnoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
snoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
onoremap <silent> <Plug>(easymotion-sln) :call EasyMotion#SL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,1,0)
nnoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
snoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
onoremap <silent> <Plug>(easymotion-tln) :call EasyMotion#TL(-1,0,0)
xnoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,1,0)
nnoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
snoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
onoremap <silent> <Plug>(easymotion-fl2) :call EasyMotion#SL(2,0,0)
xnoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-fl2) :call EasyMotion#SL(2,0,2)
xnoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,1,1)
nnoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
snoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
onoremap <silent> <Plug>(easymotion-T2) :call EasyMotion#T(2,0,1)
xnoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-tln) :call EasyMotion#TL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,1,1)
nnoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
snoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
onoremap <silent> <Plug>(easymotion-T) :call EasyMotion#T(1,0,1)
xnoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-t) :call EasyMotion#T(1,0,2)
xnoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
snoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
onoremap <silent> <Plug>(easymotion-Tn) :call EasyMotion#T(-1,0,1)
xnoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,1,2)
nnoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
snoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
onoremap <silent> <Plug>(easymotion-s2) :call EasyMotion#S(2,0,2)
xnoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,1,1)
nnoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
snoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
onoremap <silent> <Plug>(easymotion-Tl) :call EasyMotion#TL(1,0,1)
xnoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,1,2)
nnoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
snoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
onoremap <silent> <Plug>(easymotion-sn) :call EasyMotion#S(-1,0,2)
xnoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,1,1)
nnoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
snoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
onoremap <silent> <Plug>(easymotion-Fn) :call EasyMotion#S(-1,0,1)
xnoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,1,2)
nnoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
snoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
onoremap <silent> <Plug>(easymotion-sl) :call EasyMotion#SL(1,0,2)
xnoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,1,1)
nnoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
snoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
onoremap <silent> <Plug>(easymotion-Fl) :call EasyMotion#SL(1,0,1)
xnoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,1,2)
nnoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
snoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
onoremap <silent> <Plug>(easymotion-sl2) :call EasyMotion#SL(2,0,2)
xnoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
snoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
onoremap <silent> <Plug>(easymotion-bd-fln) :call EasyMotion#SL(-1,0,2)
xnoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,1,1)
nnoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
snoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
onoremap <silent> <Plug>(easymotion-F) :call EasyMotion#S(1,0,1)
xnoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,1,2)
nnoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
snoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
onoremap <silent> <Plug>(easymotion-bd-f) :call EasyMotion#S(1,0,2)
xnoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,1,1)
nnoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
snoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
onoremap <silent> <Plug>(easymotion-F2) :call EasyMotion#S(2,0,1)
xnoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,1,2)
nnoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
snoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
onoremap <silent> <Plug>(easymotion-bd-f2) :call EasyMotion#S(2,0,2)
xnoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,1,1)
nnoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
snoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
onoremap <silent> <Plug>(easymotion-Tl2) :call EasyMotion#TL(2,0,1)
xnoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,1,0)
nnoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
snoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
onoremap <silent> <Plug>(easymotion-fln) :call EasyMotion#SL(-1,0,0)
nmap <silent> <Plug>unimpairedOPrevious <Plug>unimpairedDirectoryPrevious:echohl WarningMSG|echo "[o is deprecated. Use [f"|echohl NONE
nmap <silent> <Plug>unimpairedONext <Plug>unimpairedDirectoryNext:echohl WarningMSG|echo "]o is deprecated. Use ]f"|echohl NONE
nnoremap <silent> <Plug>unimpairedTLast :exe "".(v:count ? v:count : "")."tlast"
nnoremap <silent> <Plug>unimpairedTFirst :exe "".(v:count ? v:count : "")."tfirst"
nnoremap <silent> <Plug>unimpairedTNext :exe "".(v:count ? v:count : "")."tnext"
nnoremap <silent> <Plug>unimpairedTPrevious :exe "".(v:count ? v:count : "")."tprevious"
nnoremap <silent> <Plug>unimpairedQNFile :exe "".(v:count ? v:count : "")."cnfile"zv
nnoremap <silent> <Plug>unimpairedQPFile :exe "".(v:count ? v:count : "")."cpfile"zv
nnoremap <silent> <Plug>unimpairedQLast :exe "".(v:count ? v:count : "")."clast"zv
nnoremap <silent> <Plug>unimpairedQFirst :exe "".(v:count ? v:count : "")."cfirst"zv
nnoremap <silent> <Plug>unimpairedQNext :exe "".(v:count ? v:count : "")."cnext"zv
nnoremap <silent> <Plug>unimpairedQPrevious :exe "".(v:count ? v:count : "")."cprevious"zv
nnoremap <silent> <Plug>unimpairedLNFile :exe "".(v:count ? v:count : "")."lnfile"zv
nnoremap <silent> <Plug>unimpairedLPFile :exe "".(v:count ? v:count : "")."lpfile"zv
nnoremap <silent> <Plug>unimpairedLLast :exe "".(v:count ? v:count : "")."llast"zv
nnoremap <silent> <Plug>unimpairedLFirst :exe "".(v:count ? v:count : "")."lfirst"zv
nnoremap <silent> <Plug>unimpairedLNext :exe "".(v:count ? v:count : "")."lnext"zv
nnoremap <silent> <Plug>unimpairedLPrevious :exe "".(v:count ? v:count : "")."lprevious"zv
nnoremap <silent> <Plug>unimpairedBLast :exe "".(v:count ? v:count : "")."blast"
nnoremap <silent> <Plug>unimpairedBFirst :exe "".(v:count ? v:count : "")."bfirst"
nnoremap <silent> <Plug>unimpairedBNext :exe "".(v:count ? v:count : "")."bnext"
nnoremap <silent> <Plug>unimpairedBPrevious :exe "".(v:count ? v:count : "")."bprevious"
nnoremap <silent> <Plug>unimpairedALast :exe "".(v:count ? v:count : "")."last"
nnoremap <silent> <Plug>unimpairedAFirst :exe "".(v:count ? v:count : "")."first"
nnoremap <silent> <Plug>unimpairedANext :exe "".(v:count ? v:count : "")."next"
nnoremap <silent> <Plug>unimpairedAPrevious :exe "".(v:count ? v:count : "")."previous"
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <Plug>SpeedDatingNowUTC :call speeddating#timestamp(1,v:count)
nnoremap <silent> <Plug>SpeedDatingNowLocal :call speeddating#timestamp(0,v:count)
vnoremap <silent> <Plug>SpeedDatingDown :call speeddating#incrementvisual(-v:count1)
vnoremap <silent> <Plug>SpeedDatingUp :call speeddating#incrementvisual(v:count1)
nnoremap <silent> <Plug>SpeedDatingDown :call speeddating#increment(-v:count1)
nnoremap <silent> <Plug>SpeedDatingUp :call speeddating#increment(v:count1)
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
nnoremap <silent> <Plug>(startify-open-buffers) :call startify#open_buffers()
inoremap <expr>  neocomplcache#cancel_popup()
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <expr> 	 pumvisible() ? "\" : "\	"
imap  <Plug>(neosnippet_expand_or_jump)
inoremap <expr>  delimitMate#WithinEmptyPair() ? "\=delimitMate#ExpandReturn()\" : pumvisible() ? neocomplcache#close_popup() : "\"
imap  <Plug>Isurround
imap A <Plug>(emmet-anchorize-summary)
imap a <Plug>(emmet-anchorize-url)
imap k <Plug>(emmet-remove-tag)
imap j <Plug>(emmet-split-join-tag)
imap / <Plug>(emmet-toggle-comment)
imap i <Plug>(emmet-image-size)
imap N <Plug>(emmet-move-prev)
imap n <Plug>(emmet-move-next)
imap D <Plug>(emmet-balance-tag-outword)
imap d <Plug>(emmet-balance-tag-inward)
imap u <Plug>(emmet-update-tag)
imap ; <Plug>(emmet-expand-word)
imap , <Plug>(emmet-expand-abbr)
cnoremap s? s?\v
cnoremap s/ s/\v
cabbr gitv =(getcmdtype()==':' && getcmdpos()==1 ? 'Gitv' : 'gitv')
cabbr grtoggle GoldenRatioToggle
cabbr grresize GoldenRatioResize
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set autowrite
set backspace=indent,eol,start
set backup
set backupdir=~/.vim/backup/
set cindent
set completefunc=neocomplcache#complete#manual_complete
set completeopt=menu,longest
set directory=~/.vim/swap/
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set fillchars=diff:⣿,vert:│
set foldlevelstart=0
set formatoptions=tcqrnlmM
set gdefault
set helplang=en
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set matchtime=2
set nomodeline
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,~/.vim/bundle/vim-hybrid/,~/.vim/bundle/vim-colors-solarized/,~/.vim/bundle/base16-vim/,~/.vim/bundle/vim-airline/,~/.vim/bundle/vim-bufferline/,~/.vim/bundle/vim-indent-guides/,~/.vim/bundle/vim-startify/,~/.vim/bundle/goyo.vim/,~/.vim/bundle/limelight.vim/,~/.vim/bundle/delimitMate/,~/.vim/bundle/nerdcommenter/,~/.vim/bundle/vim-abolish/,~/.vim/bundle/vim-speeddating/,~/.vim/bundle/vim-repeat/,~/.vim/bundle/vim-multiple-cursors/,~/.vim/bundle/undotree/,~/.vim/bundle/vim-surround/,~/.vim/bundle/tabular/,~/.vim/bundle/splitjoin.vim/,~/.vim/bundle/vim-pasta/,~/.vim/bundle/investigate.vim/,~/.vim/bundle/hardmode/,~/.vim/bundle/targets.vim/,~/.vim/bundle/golden-ratio/,~/.vim/bundle/vim-unimpaired/,~/.vim/bundle/vim-easymotion/,~/.vim/bundle/CamelCaseMotion/,~/.vim/bundle/tagbar/,~/.vim/bundle/vim-matchit/,~/.vim/bundle/unite.vim/,~/.vim/bundle/unite-outline/,~/.vim/bundle/vimproc/,~/.vim/bundle/nerdtree/,~/.vim/bundle/vim-nerdtree-tabs/,~/.vim/bundle/vim-tmuxify/,~/.vim/bundle/neocomplcache.vim/,~/.vim/bundle/neosnippet.vim/,~/.vim/bundle/neosnippet-snippets/,~/.vim/bundle/vim-snippets/,~/.vim/bundle/syntastic/,~/.vim/bundle/SingleCompile/,~/.vim/bundle/vim-fugitive/,~/.vim/bundle/gitv/,~/.vim/bundle/vim-gitgutter/,~/.vim/bundle/hammer.vim/,~/.vim/bundle/vim-rails/,~/.vim/bundle/emmet-vim/,~/.vim/bundle/LaTeX-Box/,~/.vim/bundle/vim-polyglot/,~/.vim/bundle/.neobundle,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/bundle/neobundle.vim/,~/.vim/bundle/tabular//after,~/.vim/bundle/LaTeX-Box//after,~/.vim/bundle/vim-polyglot//after
set scrolljump=5
set scrolloff=3
set shiftround
set shiftwidth=4
set shortmess=at
set showbreak=↪
set showcmd
set showmatch
set noshowmode
set showtabline=2
set sidescroll=1
set sidescrolloff=10
set smartcase
set softtabstop=4
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set tabline=%!MyTabLine()
set textwidth=80
set timeoutlen=500
set title
set titlestring=%t%(\ %m%)%(\ (%{expand('%:p:h')})%)%(\ %a%)
set ttimeoutlen=50
set undodir=~/.vim/undo/
set undofile
set viewdir=~/.vim/view/
set viewoptions=folds,cursor,slash,unix
set virtualedit=block,onemore
set whichwrap=b,s,h,l,<,>,[,]
set wildignore=*.pyc
set wildmenu
set wildmode=list:longest,full
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /var/myblog/app
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 dbOneButton.py
badd +0 OneButtonBackend.py
args dbOneButton.py
edit dbOneButton.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
nnoremap <buffer> ,r :call ChoosePythonCompiler()
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer>   <Plug>delimitMateSpace
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:XCOMM,n:>,fb:-
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
set concealcursor=i
setlocal concealcursor=i
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
set foldcolumn=1
setlocal foldcolumn=1
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
set foldtext=MyFoldText()
setlocal foldtext=MyFoldText()
setlocal formatexpr=
setlocal formatoptions=tcqrnlmM
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetPythonPEPIndent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
set linebreak
setlocal linebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=pythoncomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.py
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 64 - ((15 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
64
normal! 024|
lcd /var/myblog/app
tabedit /var/myblog/app/OneButtonBackend.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-BS> <Plug>delimitMateS-BS
imap <buffer> <BS> <Plug>delimitMateBS
nnoremap <buffer> ,r :call ChoosePythonCompiler()
imap <buffer> <silent> g <Plug>delimitMateJumpMany
imap <buffer>  <Plug>delimitMateBS
imap <buffer>   <Plug>delimitMateSpace
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> ` <Plug>delimitMate`
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:XCOMM,n:>,fb:-
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
set concealcursor=i
setlocal concealcursor=i
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=neocomplcache#complete#manual_complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
set foldcolumn=1
setlocal foldcolumn=1
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
set foldtext=MyFoldText()
setlocal foldtext=MyFoldText()
setlocal formatexpr=
setlocal formatoptions=tcqrnlmM
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetPythonPEPIndent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=pythoncomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.py
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 23 - ((19 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 0
lcd /var/myblog/app
tabnext 2
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=at
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
