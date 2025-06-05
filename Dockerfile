FROM n8nio/n8n

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
