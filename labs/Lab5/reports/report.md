---
title: "Лабораторная работа №5. Настройка рабочей среды"
author: "Ким Илья"
date: "2026"
mainfont: "DejaVu Serif"
sansfont: "DejaVu Sans"
monofont: "DejaVu Sans Mono"
lang: ru-RU
geometry: margin=2cm
---

# Цель работы

Настройка рабочей среды. Освоение менеджера паролей pass и инструмента управления файлами конфигурации chezmoi.

# Задание

- Установить и настроить менеджер паролей pass.
- Настроить интерфейс с браузером.
- Установить и настроить chezmoi для управления файлами конфигурации.
- Создать репозиторий dotfiles на основе шаблона.

# Выполнение лабораторной работы

## 1. Установка менеджера паролей pass

Установил pass и pass-otp:

sudo dnf install pass pass-otp

![Установка pass](image/01.jpg)

## 2. Настройка pass

Просмотрел список GPG-ключей:

gpg --list-secret-keys

![Список GPG-ключей](image/02.jpg)

Инициализировал хранилище паролей с помощью GPG-ключа:

pass init твой_email@gmail.com

![Инициализация хранилища](image/03.jpg)

## 3. Синхронизация pass с git

Создал структуру git для хранилища паролей:

pass git init
pass git remote add origin git@github.com:DanilaKozlov1/password-store.git
pass git pull
pass git push

![Синхронизация с git](image/04.jpg)

## 4. Настройка интерфейса с браузером

Установил browserpass:

sudo dnf copr enable maximbaz/browserpass
sudo dnf install browserpass

![Установка browserpass](image/05.jpg)

Установил плагин browserpass в Firefox через:
https://addons.mozilla.org/en-US/firefox/addon/browserpass-ce/

## 5. Сохранение пароля

Добавил новый тестовый пароль:

pass insert test/mypassword

Просмотрел сохранённый пароль:

pass test/mypassword

![Сохранение пароля](image/06.jpg)

## 6. Установка дополнительного программного обеспечения

Установил необходимые пакеты:

sudo dnf -y install \
  dunst \
  fontawesome-fonts \
  powerline-fonts \
  light \
  fuzzel \
  swaylock \
  kitty \
  waybar swaybg \
  wl-clipboard \
  mpv \
  grim \
  slurp

![Установка дополнительного ПО](image/07.jpg)

Установил шрифты iosevka:

sudo dnf copr enable peterwu/iosevka
sudo dnf install iosevka-fonts iosevka-aile-fonts iosevka-curly-fonts \
  iosevka-slab-fonts iosevka-etoile-fonts iosevka-term-fonts

![Установка шрифтов](image/08.jpg)

## 7. Установка chezmoi

Установил chezmoi с помощью скрипта:

sh -c "$(wget -qO- chezmoi.io/get)"

![Установка chezmoi](image/09.jpg)

## 8. Создание репозитория dotfiles

Создал репозиторий на основе шаблона:

gh repo create dotfiles --template="yamadharma/dotfiles-template" --private

![Создание репозитория dotfiles](image/10.jpg)

## 9. Подключение репозитория к системе

Инициализировал chezmoi с репозиторием dotfiles:

chezmoi init git@github.com:DanilaKozlov1/dotfiles.git

Проверил изменения:

chezmoi diff

Применил изменения:

chezmoi apply -v

![Подключение репозитория](image/11.jpg)

## 10. Настройка автоматической синхронизации

Добавил в файл конфигурации ~/.config/chezmoi/chezmoi.toml:

[git]
    autoCommit = true
    autoPush = true

![Настройка автосинхронизации](image/12.jpg)

# Выводы

В ходе выполнения лабораторной работы была настроена рабочая среда.
Установлен и настроен менеджер паролей pass, настроена его синхронизация
с git и интеграция с браузером Firefox через плагин browserpass.
Установлен инструмент chezmoi для управления файлами конфигурации,
создан репозиторий dotfiles на основе шаблона и настроена автоматическая
синхронизация изменений.
