function! Powerline#Functions#vihxen#GetHxml()
    if exists('b:vihxen_hxml')
        let display = fnamemodify(b:vihxen_hxml,":.")
        let status =  "\u2622"
       return status." ".display
    else
        return ''
    end
endfunction

