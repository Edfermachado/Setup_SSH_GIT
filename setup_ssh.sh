#!/bin/bash

read -p "Ingrese su email de GitHub para la clave SSH: " github_email

SSH_KEY="$HOME/.ssh/id_ed25519"

if [ -f "$SSH_KEY" ]; then
  echo "La clave SSH ya existe en $SSH_KEY"
else
  echo "Generando clave SSH..."
  ssh-keygen -t ed25519 -C "$github_email" -f "$SSH_KEY" -N ""
fi

echo "Iniciando el agente SSH..."
eval "$(ssh-agent -s)"
ssh-add "$SSH_KEY"

echo "Copiando clave pública al portapapeles..."
cat "${SSH_KEY}.pub" | clip

echo "Clave pública copiada al portapapeles."
echo "Pegala en GitHub aquí:"
echo "https://github.com/settings/ssh/new"
ss

echo "Configuración SSH finalizada."
