# Утилита Bat

### Описание

Это аналог утилиты `cat`, но с подсветкой синтаксиса и интеграцией `git`

### Установка

С помощью утилиты `apt`

`apt install bat`

В таком случае он установится как `batcat`.

Затем выставляем alias для использования `bat` вместо `cat`

_ваш файл с алиасами_

```sh
alias cat="batcat"
```

#### Источники

1. https://github.com/sharkdp/bat
