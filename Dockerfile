FROM n8nio/n8n:latest

# Railway assigns PORT automatically, N8N must listen on it
ENV N8N_PORT=${PORT:-5678}
ENV N8N_PROTOCOL=https
ENV GENERIC_TIMEZONE=Asia/Karachi
ENV N8N_DIAGNOSTICS_ENABLED=false
ENV N8N_VERSION_NOTIFICATIONS_ENABLED=false
ENV N8N_LOG_LEVEL=info

# Use SQLite by default (no external DB needed)
ENV DB_TYPE=sqlite

# Webhook URL for WhatsApp callbacks
ENV WEBHOOK_URL=https://whatsapp-n8n-bot-production-b83b.up.railway.app/

# Default admin login (CHANGE AFTER FIRST LOGIN)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=Admin@12345

# Encryption key (required for credentials storage)
ENV N8N_ENCRYPTION_KEY=n8n-whatsapp-bot-key-afnan-2024x

# Allow all hosts
ENV N8N_SECURE_COOKIE=false

EXPOSE ${PORT:-5678}

CMD sh -c "export N8N_PORT=${PORT:-5678} && n8n start"
