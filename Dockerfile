FROM n8nio/n8n

USER root
RUN apk add --no-cache wget

USER node

CMD sh -c "wget https://raw.githubusercontent.com/DuvanLT/Workflows/main/My_workflow.json -O /data/import.json && n8n import:workflow --input=/data/import.json && n8n start"
