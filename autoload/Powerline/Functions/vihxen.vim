function! Powerline#Functions#vihxen#GetHxml()
    if exists('b:vihxen_hxml')
        let display = fnamemodify(b:vihxen_hxml,":.")
        let status = '[build]'
        if exists(g:Powerline_symbols) && g:Powerline_symbols = "fancy"
            let status =  "\u2622"
        endif
       return status." ".display
    else
        return ''
    end
endfunction

