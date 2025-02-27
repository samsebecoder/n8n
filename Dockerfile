# Используем официальный образ n8n
FROM n8nio/n8n:latest

# Переключаемся на пользователя root для изменения прав
USER root

# Создаем папку и устанавливаем нужные права
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n && \
    chmod -R 770 /home/node/.n8n

# Переключаемся обратно на пользователя node
USER node

# Открываем порт 3000
EXPOSE 3000

# Стартуем n8n
CMD ["n8n", "start"]
