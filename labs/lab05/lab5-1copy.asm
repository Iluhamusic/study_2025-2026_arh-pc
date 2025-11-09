SECTION .data
msg     DB 'Введите строку:', 10
msgLen  EQU $-msg

SECTION .bss
buf1    RESB 80

SECTION .text
GLOBAL _start

_start:
    mov eax, 4          ; sys_write
    mov ebx, 1          ; stdout
    mov ecx, msg        ; адрес строки
    mov edx, msgLen     ; длина строки
    int 80h             ; вывод приглашения

    mov eax, 3          ; sys_read
    mov ebx, 0          ; stdin
    mov ecx, buf1       ; куда сохранять
    mov edx, 80         ; максимум символов
    int 80h             ; чтение строки

    mov eax, 4          ; sys_write
    mov ebx, 1
    mov ecx, buf1       ; вывести введённую строку
    mov edx, 80
    int 80h

    mov eax, 1          ; sys_exit
    mov ebx, 0
    int 80h
