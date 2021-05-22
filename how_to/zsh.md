# Установка Zsh + Antigen + Oh my Zsh


## Установка Zsh

1. Установите zsh
```shell
sudo apt install zsh
```

2. Создайте файл `~/.zshrc` и пропишите туда

```shell
# Загрузить antigen
source "${HOME}/antigen.zsh"

# Загрузить настройки antigen
antigen init ~/.antigenrc
```

3. Установите `zsh` как основной `shell`
```shell
chsh -s $(which zsh)
```


## Установка Antigen

1. Установите Antigen
```shell
curl -L git.io/antigen > antigen.zsh
```
2. Создайте файл `~/.antigenrc` - в нём будут храниться настройки `antigen`
3. Добавьте эти строчки в `.antigenrc`
```shell
# Загрузить oh-my-zsh
antigen use oh-my-zsh

# Загрузить пакеты из стандартного репозитория (oh-my-zsh)
antigen bundle git
antigen bundle command-not-found
antigen bundle docker

# Загрузить пакеты из удаленных репозиториев
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Выбираем тему
antigen theme robbyrussell

# Говорим antigen, что мы закончили
antigen apply
```

Вот и всё. Осталось перелогиниться и можно пользоваться нашим супер-модным `shell`.

### Возможные ошибки

1. Постоянное сообщение в shell
```
Antigen: Another process in running.
```
   Решение: 
   удалить файл `~/.antigen/.lock`
   ```shell
    rm ~/.antigen/.lock
   ```