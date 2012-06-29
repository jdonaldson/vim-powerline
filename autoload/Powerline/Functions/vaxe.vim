function! Powerline#Functions#vaxe#GetHxml()
    let s:vaxe_hxml = ''
    let tag = ''
    if exists('g:vaxe_hxml')
        let s:vaxe_hxml = g:vaxe_hxml
        let tag = ' [PRJ]'
    elseif exists('b:vaxe_hxml')
        let s:vaxe_hxml = b:vaxe_hxml
    else
        return ''
    endif
    if filereadable(s:vaxe_hxml) 
        let display = fnamemodify(s:vaxe_hxml,":.")
        let status = '[build]'
        if exists("g:Powerline_symbols") && g:Powerline_symbols == "fancy"
            let status =  "\u2622"
        endif
       return status." ".display.tag
    else
        return '[BAD HXML] '.s:vaxe_hxml
    end
endfunction

