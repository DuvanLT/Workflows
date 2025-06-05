FROM n8nio/n8n:latest

USER root

# Instalar wget
RUN apk add --no-cache wget

# Crear directorio de datos
RUN mkdir -p /data && chown node:node /data

USER node

# Crear script inline y ejecutar
CMD ["sh", "-c", "wget -O /data/import.json https://raw.githubusercontent.com/DuvanLT/Workflows/main/My_workflow.json && n8n import:workflow --input=/data/import.json && n8n start"]
