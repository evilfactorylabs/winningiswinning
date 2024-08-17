#!/usr/bin/env bash

harusada() {
  if ! command -v "$1" &> /dev/null; then
    echo "$1 tidak ada"
    exit 1
  fi
}

harusgaada() {
  if command -v "$1" &> /dev/null; then
    echo "$1 sudah ada"
    exit 1
  fi
}

harusada "nc"
harusada "asciinema"
harusgaada "elixir"
harusgaada "psql"

if nc -z 127.0.0.1 5432; then
    echo "postgres sudah menyala 🔥"
    exit 1
fi

asciinema rec -c "./gas.sh $*"
