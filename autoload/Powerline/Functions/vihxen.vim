function! Powerline#Functions#vihxen#GetHxml()
    let s:vihxen_hxml = ''
    let tag = ''
    if exists('g:vihxen_hxml')
        let s:vihxen_hxml = g:vihxen_hxml
        let tag = ' [proj]'
    elseif exists('b:vihxen_hxml')
        let s:vihxen_hxml = b:vihxen_hxml
    else
        return ''
    endif
    if filereadable(s:vihxen_hxml) 
        let display = fnamemodify(s:vihxen_hxml,":.")
        let status = '[build]'
        if exists("g:Powerline_symbols") && g:Powerline_symbols == "fancy"
            let status =  "\u2622"
        endif
       return status." ".display.tag
    else
        return '[BAD HXML] '.s:vihxen_hxml
    end
endfunction

