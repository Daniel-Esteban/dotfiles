inoremap > ><C-x><C-o>


if exists("g:php_ftplugin_loaded")
    finish
endif

let g:php_ftplugin_loaded = 1

autocmd! BufWritePost *.php silent! call PhpCsFixerFixFile()


