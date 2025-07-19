FROM alpine:latest

# Instala FFmpeg e bash
RUN apk add --no-cache ffmpeg bash

# Cria pasta de gravações
RUN mkdir /app
WORKDIR /app

# Copia script
COPY script.sh /app/script.sh
RUN chmod +x /app/script.sh

CMD ["/bin/bash", "/app/script.sh"]
