#!/bin/bash
set -e

echo "Descargando workflow desde GitHub..."
wget -O /data/import.json https://raw.githubusercontent.com/DuvanLT/Workflows/main/My_workflow.json

echo "Importando workflow..."
n8n import:workflow --input=/data/import.json

echo "Iniciando n8n..."
exec n8n start
