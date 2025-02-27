# Используем официальный образ n8n
FROM n8nio/n8n:latest

# Задаем порт
EXPOSE 5678

# Запуск n8n
CMD ["n8n"]
