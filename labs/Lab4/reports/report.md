# Отчёт по лабораторной работе №4
# Ким Илья Еногиевич
# ст. 1032253496
## Цель работы

Изучить расширенные возможности системы контроля версий Git, освоить работу с git-flow, инструментами для стандартизированных коммитов и созданием релизов.

---

# Шаг 1. Установка git-flow

dnf copr enable elegos/gitflow
dnf install gitflow
---

# Шаг 2. Установка Node.js

dnf install nodejs
dnf install pnpm
---

# Шаг 3. Настройка Node.js

pnpm setup
source ~/.bashrc
---

# Шаг 4. Установка инструментов для коммитов

pnpm add -g commitizen
pnpm add -g standard-changelog
---

# Шаг 5. Создание репозитория на GitHub

Создать новый репозиторий git-extended на GitHub.

Затем выполнить в терминале:

mkdir git-extended
cd git-extended
git init
git commit -m "first commit"
git remote add origin git@github.com:user/git-extended.git
git push -u origin master
---

# Шаг 6. Конфигурация общепринятых коммитов

pnpm init
Открыть файл:

nano package.json
Добавить блок config:

{
 "name": "git-extended",
 "version": "1.0.0",
 "description": "Git repo for educational purposes",
 "main": "index.js",
 "repository": "git@github.com:user/git-extended.git",
 "author": "Student",
 "license": "CC-BY-4.0",
 "config": {
  "commitizen": {
   "path": "cz-conventional-changelog"
  }
 }
}
После этого выполнить:

git add .
git cz
git push
---

# Шаг 7. Конфигурация git-flow

git flow init
Проверить ветку:

git branch
Загрузить репозиторий:

git push --all
Установить внешнюю ветку:

git branch --set-upstream-to=origin/develop develop
---

# Шаг 8. Создание первого релиза 1.0.0

git flow release start 1.0.0
Создать журнал изменений:

standard-changelog --first-release
Добавить файл:

git add CHANGELOG.md
git commit -am "chore(site): add changelog"
Завершить релиз:

git flow release finish 1.0.0
Отправить изменения:

git push --all
git push --tags
Создать релиз:

gh release create v1.0.0 -F CHANGELOG.md
---

# Шаг 9. Разработка новой функциональности

git flow feature start feature_branch
Создать файл:

touch newfeature.md
git add .
git cz
Завершить ветку:

git flow feature finish feature_branch
---

# Шаг 10. Создание релиза 1.2.3

git flow release start 1.2.3
Изменить версию:

nano package.json
Обновить:

"version": "1.2.3"
Создать журнал изменений:

standard-changelog
Добавить изменения:

git add CHANGELOG.md
git commit -am "chore(site): update changelog"
Завершить релиз:

git flow release finish 1.2.3
Отправить на GitHub:

git push --all
git push --tags
Создать релиз:

gh release create v1.2.3 -F CHANGELOG.md
---

# Вывод

В ходе лабораторной работы были изучены расширенные возможности системы контроля версий Git. Была выполнена настройка git-flow, создан репозиторий, настроены стандартизированные коммиты и выполнено создание релизов.
