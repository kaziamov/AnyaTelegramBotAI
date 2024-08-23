# Используем официальный образ Python
FROM python:3.10

# Устанавливаем рабочую директорию
WORKDIR /app

# Устанавливаем Poetry
RUN pip install poetry

# Копируем файлы для установки зависимостей
COPY pyproject.toml poetry.lock ./

# Устанавливаем зависимости через Poetry
RUN poetry install --no-root

# Копируем весь исходный код проекта
COPY ./ /app/

# Команда для запуска приложения
CMD ["poetry", "run", "python", "src/entry_to_telegram/main.py"]