# DevOps Practice Project

## 📌 О проекте

Учебный проект, в котором реализовано развертывание backend и frontend приложения с использованием Docker, Nginx и GitHub Actions.

Проект демонстрирует базовые практики DevOps: контейнеризацию, настройку reverse proxy и CI.

---

## ⚙️ Используемые технологии

* Docker
* Docker Compose
* Nginx (reverse proxy)
* GitHub Actions (CI)
* Linux

---

## 🏗 Архитектура

```
Пользователь → Nginx → Frontend / Backend → Database
```

* Nginx принимает входящие запросы
* `/api` маршрутизируется в backend
* остальной трафик идёт во frontend

---

## 🚀 Запуск проекта

```bash
docker compose up --build
```

После запуска:

* Frontend: http://localhost
* Backend: http://localhost/api

---

## 🔄 CI (GitHub Actions)

Настроен pipeline, который при каждом push:

* собирает Docker-образ backend
* собирает Docker-образ frontend

---

## 📂 Структура проекта

```
.
├── backend/
├── frontend/
├── nginx/
├── docker-compose.yml
└── .github/workflows/ci.yml
```

---

## 💡 Что реализовано

* Контейнеризация приложения (Docker)
* Оркестрация через docker-compose
* Reverse proxy через Nginx
* CI через GitHub Actions