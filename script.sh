#!/bin/bash

URL="https://r11.ciclano.io/proxy/alex/stream"
OUTPUT_DIR="/app/gravacoes"

mkdir -p $OUTPUT_DIR

echo "Iniciando gravação contínua em blocos de 1h..."

while true; do
  TIMESTAMP=$(date +"%Y%m%d_%H%M")
  ffmpeg -i "$URL" -t 3600 -c copy "$OUTPUT_DIR/bloco_$TIMESTAMP.mp3"
done
