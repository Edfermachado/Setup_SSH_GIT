
#!/bin/bash

echo "Configuración de clave SSH para GitHub (Git Bash - Windows)"

# Solicitar el email de GitHub
read -p "Ingrese su email de GitHub para la clave SSH: " github_email

# Definir la ruta de la clave SSH
SSH_KEY="$HOME/.ssh/id_ed25519"

# Verificar si ya existe la clave
if [ -f "$SSH_KEY" ]; then
  echo "Ya existe una clave SSH en: $SSH_KEY"
else
  echo "Generando una nueva clave SSH..."
  ssh-keygen -t ed25519 -C "$github_email" -f "$SSH_KEY" -N ""
  echo "Clave SSH generada correctamente."
fi

# Iniciar el agente SSH
echo "Iniciando el agente SSH..."
eval "$(ssh-agent -s)"

# Agregar la clave al agente
echo "Agregando la clave al agente SSH..."
ssh-add "$SSH_KEY"

# Copiar la clave pública al portapapeles usando `clip` (funciona en Git Bash en Windows)
echo "Copiando la clave pública al portapapeles..."
cat "${SSH_KEY}.pub" | clip
echo "Clave pública copiada al portapapeles."

# Mostrar la URL de GitHub
echo ""
echo "Abre esta URL en tu navegador y pega la clave:"
echo "https://github.com/settings/ssh/new"

echo ""
echo "Configuración SSH completada con éxito."
