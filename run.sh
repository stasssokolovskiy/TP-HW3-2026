#!/bin/sh
case $1 in
    ("build_generator") docker build generator -t csv-generator;;
    ("run_generator") docker run -v .:/mnt csv-generator /mnt/data;;
    ("create_local_data") docker run -v .:/mnt csv-generator /mnt/Local_data;;
    (*) echo "No such command";;
esac