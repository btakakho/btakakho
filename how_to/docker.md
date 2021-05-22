# Установка Docker и Docker Compose на Ubuntu 20.04

## 1. Обновите существующий список пакетов:

```
sudo apt update
```

## 2. Установите пакеты, которые позволяют `apt` работать через HTTPS

```
sudo apt install apt-transport-https ca-certificates curl software-properties-common
```

## 3. Добавьте ключ GPG для официального репозитория Docker в вашу систему:

```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

## 4. Добавьте репозиторий Docker в источники APT:

```
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
```

`focal = Focal Fossa.` - название релиза ubuntu 20.04

## 5. Потом обновите базу данных пакетов и добавьте в нее пакеты Docker из недавно добавленного репозитория:

```
sudo apt update
```

## 6. Убедитесь, что установка будет выполняться из репозитория Docker, а не из репозитория Ubuntu по умолчанию:

```
apt-cache policy docker-ce
```

## 7. Установить Docker

```
sudo apt install docker-ce
```

Docker должен быть установлен, демон-процесс запущен, а для процесса активирован запуск при загрузке. Проверьте, что он запущен:

```
sudo systemctl status docker
```

## 8. Добавить свое имя пользователя в группу docker:

```
sudo usermod -aG docker ${USER}
```

## 9. Чтобы применить добавление нового члена группы, выйдите и войдите на сервер или введите следующее:

```
su - ${USER}
```

## 10. Проверьте, что ваш пользователь добавлен в группу docker, введя следующее:

```
id -nG
```

или

```
groups
```

## 11. Установите Docker Compose

Проверьте актуальную версию на страничке https://github.com/docker/compose/releases.

```
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```

## 12. Сделайте Docker Compose исполняемым

```
sudo chmod +x /usr/local/bin/docker-compose
```

---

Источники:

1. https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04-ru
