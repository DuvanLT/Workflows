FROM n8nio/n8n

CMD sh -c "wget https://raw.githubusercontent.com/DuvanLT/Workflows/main/My_workflow.json -O /data/import.json && n8n import:workflow --input=/data/import.json && n8n start"
