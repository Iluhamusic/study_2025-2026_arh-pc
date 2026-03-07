SECTION .data
    msg     DB 'Введите строку: ', 0Ah     ; сообщение + перевод строки
    msgLen  EQU $ - msg                    ; длина сообщения

SECTION .bss
    buf     RESB 80                        ; буфер для ввода

SECTION .text
    GLOBAL _start

_start:
    ; выводим приглашение
    mov eax, 4         ; sys_write
    mov ebx, 1         ; stdout
    mov ecx, msg       ; адрес сообщения
    mov edx, msgLen    ; длина сообщения
    int 80h

    ; читаем строку с клавиатуры
    mov eax, 3         ; sys_read
    mov ebx, 0         ; stdin
    mov ecx, buf       ; адрес буфера
    mov edx, 80        ; максимум символов
    int 80h

    ; выводим введённую строку
    mov eax, 4         ; sys_write
    mov ebx, 1         ; stdout
    mov ecx, buf       ; адрес буфера
    mov edx, 80        ; длина (максимум)
    int 80h

    ; выходим из программы
    mov eax, 1         ; sys_exit
    mov ebx, 0
    int 80h
