#!/usr/bin/env bash

# Diretório de origem (seu /home) usndo a variável de ambiente $HOME
SOURCE_DIR="$HOME/"

# Diretório de destino (backup no HDD)
BACKUP_DIR="/media/$USER/hdd_ext4_zorin"

# Criar o diretório de backup, se não existir
mkdir -p "$BACKUP_DIR"

# Executar o rsync
rsync -av --delete "$SOURCE_DIR/" "$BACKUP_DIR/"

# Registrar a data e hora do backup
echo "Backup performed on $(date)" >> "$BACKUP_DIR/daily-backup.log"
