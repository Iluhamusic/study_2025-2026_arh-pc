---
## Author
author:
  name: Илья Ким Еногиевич
  affiliation:
    - name: Российский университет дружбы народов
      country: Российская Федерация
      postal-code: 117198
      city: Москва
      address: ул. Миклухо-Маклая, д. 6
      student number: 1032253496

lang: ru

format:
  pdf:
    documentclass: scrartcl
    latex-engine: xelatex
    mainfont: "Liberation Serif"
    sansfont: "Liberation Sans"
    monofont: "Liberation Mono"
    include-in-header:
      text: |
        \usepackage{fontspec}
        \setmainfont{Liberation Serif}
        \setsansfont{Liberation Sans}
        \setmonofont{Liberation Mono}

  docx: default

title: Лабораторная работа №2
subtitle: Настройка Git, SSH и GPG в Fedora Linux (Sway)

license: CC BY
---

# Цели и задачи работы

## Цель лабораторной работы

Изучить процесс настройки среды разработки в операционной системе Fedora Linux.  
Научиться устанавливать и настраивать инструменты Git, GitHub CLI, SSH и GPG.

## Задачи работы

1. Установить необходимые пакеты.
2. Настроить Git.
3. Создать SSH ключ для работы с GitHub.
4. Сгенерировать GPG ключ для подписи коммитов.
5. Выполнить авторизацию GitHub CLI.
6. Клонировать репозиторий.
7. Настроить раскладку клавиатуры в Sway.

---

# Установка необходимых инструментов

Для установки необходимых программ используется пакетный менеджер dnf.

`bash
sudo dnf install git gh gnupg2 xclip
