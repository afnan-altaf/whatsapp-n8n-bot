FROM n8nio/n8n:latest

ENV GENERIC_TIMEZONE=Asia/Karachi
ENV N8N_DIAGNOSTICS_ENABLED=false
ENV N8N_VERSION_NOTIFICATIONS_ENABLED=false
ENV N8N_LOG_LEVEL=info
ENV N8N_PROTOCOL=https
ENV DB_TYPE=sqlite
ENV WEBHOOK_URL=https://whatsapp-n8n-bot-production-b83b.up.railway.app/
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=Admin@12345
ENV N8N_ENCRYPTION_KEY=n8n-whatsapp-bot-key-afnan-2024x
ENV N8N_SECURE_COOKIE=false

# Railway PORT variable is injected at runtime — set N8N_PORT from it
CMD ["sh", "-c", "N8N_PORT=${PORT:-5678} n8n start"]
