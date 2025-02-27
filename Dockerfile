# Используем официальный образ n8n
FROM n8nio/n8n:latest

# Устанавливаем права для конфигурационного файла
USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n
RUN chmod 600 /home/node/.n8n

# Переключаемся обратно на пользователя node
USER node

# Открываем порт 3000
EXPOSE 3000

# Стартуем n8n
CMD ["n8n", "start"]

