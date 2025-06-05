FROM n8nio/n8n

CMD sh -c "curl -o /data/import.json https://raw.githubusercontent.com/DuvanLT/Workflows/main/My_workflow.json && n8n import:workflow --input=/data/import.json && n8n start"
