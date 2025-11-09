SECTION .data
msg     db 'Введите строку:', 0Ah    ; сообщение + перевод строки
msgLen  equ $ - msg                  ; длина сообщения

SECTION .bss
buf1    resb 80                      ; буфер для ввода 80 байт

SECTION .text
GLOBAL _start

_start:
    ; выводим сообщение
    mov eax, 4        ; sys_write
    mov ebx, 1        ; stdout
    mov ecx, msg
    mov edx, msgLen
    int 80h

    ; читаем строку с клавиатуры
    mov eax, 3        ; sys_read
    mov ebx, 0        ; stdin
    mov ecx, buf1     ; <-- вот тут как раз используется buf1
    mov edx, 80
    int 80h

    ; выходим
    mov eax, 1        ; sys_exit
    mov ebx, 0
    int 80h
