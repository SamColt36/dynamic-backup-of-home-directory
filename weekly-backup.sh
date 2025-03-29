#!/usr/bin/env bash

# Diretório de origem (seu /home) usndo a variável de ambiente $HOME
backup_path_origin="$HOME"

#Diretório de destino
backup_path_destination="/media/$USER/hdd_ext4_zorin"

# Formato de arquivo
date_format=$(date "+%d-%m-%Y %H:%M:%S")
final_archive="weekly_backup.tar.gz"

# Diretório com caminho de log
log_file="$backup_path_destination/weekly_backup.log"

## Backup propriamente dito não incluindo os arquivos e diretórios ocultos
if tar -czSpf "$backup_path_destination/$final_archive" --exclude=".*" "$backup_path_origin"; then
	printf "[$date_format] BACKUP COMPLETED SUCCESSFULLY.\n" >> $log_file
else
	printf "[$date_format] BACKUP WITH ERROR.\n" >> $log_file
fi


