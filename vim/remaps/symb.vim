let g:SYMBOn=0

function! ToggleShortcut()
	if !g:SYMBOn
		call SYMB()
	else
		call SYMBOff()
	endif
endfunction

function! SYMB()
	echo "SYMB macros activated"
	let g:SYMBOn=1
	imap ;un ∪
	imap ;ins ∩ 
  imap ;and ∧
  imap ;or ∨
  imap ;eq ≡ 
  imap ;nt ¬
	imap ;fa ∀
  imap ;te ∃
  imap ;tf ∴ 
  imap ;th ∵
  imap ;tim ×
  imap ;div ÷
  imap ;sum ∑
  imap ;rar ↔
  imap ;lar →
  imap ;uar ↑ 
  imap ;inf ∞ 
  imap ;blg ∈
  imap ;nblg ∉
  imap ;sbs ⊂
  imap ;psbs ⊆
  imap ;sps ⊃
  imap ;psps ⊇
  imap ;nls ∅
  imap ;lbd λ 
endfunction

function! SYMBOff()
	echo "SYMB macros off."
	let g:SYMBOn=0
	iunmap ;un ∪
	iunmap ;ins ∩ 
  iunmap ;and ∧
  iunmap ;or ∨
  iunmap ;eq ≡ 
  iunmap ;nt ¬
	iunmap ;fa ∀
  iunmap ;te ∃
  iunmap ;tf ∴ 
  iunmap ;th ∵
  iunmap ;tim ×
  iunmap ;div ÷
  iunmap ;sum ∑
  iunmap ;rar ↔
  iunmap ;lar →
  iunmap ;uar ↑ 
  iunmap ;inf ∞ 
  iunmap ;blg ∈
  iunmap ;nblg ∉
  iunmap ;sbs ⊂
  iunmap ;psbs ⊆
  iunmap ;sps ⊃
  iunmap ;psps ⊇
  iunmap ;nls ∅
  iunmap ;lbd λ 
endfunction

