#!/bin/sh
case $1 in
    ("build_generator") docker build generator -t csv-generator;;
    ("run_generator") docker run -v .:/mnt csv-generator /mnt/data;;
    ("create_local_data") docker run -v .:/mnt csv-generator /mnt/Local_data;;
    ("build_reporter") docker build analyst -t html-reporter;;
    ("run_reporter") docker run -v ./data:/data html-reporter;;
    ("structure") ls -R .;;
    ("clear_data") docker run -v ./data:/mnt alpine sh -c "rm -f /mnt/*.csv && rm -f /mnt/*.html";;
    ("inside_generator") docker run -v .:/mnt --entrypoint sh csv-generator -c "ls /mnt/data";;
    ("inside_reporter") docker run -v ./data:/data --entrypoint sh html-reporter -c "ls /data";;
    (*) echo "No such command";;
esac