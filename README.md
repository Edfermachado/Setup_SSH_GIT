# ⚙️ Guía para configurar git con SSH

Este documento te guiará paso a paso para ejecutar correctamente el script `setup_ssh.sh` en tu sistema utilizando **Git Bash** o la **terminal de Windows**.

---

## ✅ Requisitos Previos

- Tener instalado **Git** en tu sistema.

---

## 🛠️ Pasos a seguir

### 🔹 PASO 1: Instalar Git

Si aún no tienes Git instalado, descárgalo e instálalo desde:

👉 [https://git-scm.com/](https://git-scm.com/)

---

### 🔹 PASO 2: Abrir la terminal en la ubicación del script

Debes ejecutar la terminal en el directorio donde se encuentra el archivo `setup_ssh.sh`.

#### 📁 Opción A: Usar Git Bash (recomendado)

1. Dirígete a la carpeta donde está `setup_ssh.sh`.
2. Haz **clic derecho** en un espacio vacío dentro de la carpeta.
3. Selecciona **“Git Bash Here”**.

> ⚠️ **Importante:**  
> Si no aparece la opción “Git Bash Here”, puede ser porque acabas de instalar Git. Para que esta opción aparezca:
> - Reinicia tu PC.

---

#### 💡 Alternativa rápida si no quieres reiniciar:

Puedes usar la **terminal de Windows**:

1. Dirígete a la carpeta donde está el script.
2. Haz **clic derecho**.
3. Selecciona **“Open Windows Terminal Here”**.

---

#### 📁 Opción B: Abrir Git Bash manualmente

1. Abre el menú de aplicaciones y busca **"Git Bash"**.
2. Una vez abierto, deberás **navegar hasta la carpeta** donde está el script usando comandos como:

```bash
cd ruta/al/directorio
ls
```

---

### 🔹 PASO 3: Dar permisos de ejecución al script

Con la terminal ubicada en el directorio correcto, ejecuta el siguiente comando para darle permisos de ejecución al script:

```bash
chmod +x setup_ssh.sh
```

Presiona **ENTER**.

---

### 🔹 PASO 4: Ejecutar el script

Una vez otorgados los permisos, ejecuta el script con el siguiente comando:

```bash
./setup_ssh.sh
```

Presiona **ENTER**.

---

### 🔹 PASO 5: Seguir las instrucciones del script

La terminal mostrará una serie de instrucciones o preguntas.  
📌 **Sigue las indicaciones al pie de la letra** para completar la configuración correctamente.

---

## 🧩 Notas finales

- Si encuentras algún error, asegúrate de estar en el **directorio correcto** y de que el archivo `setup_ssh.sh` tiene permisos de ejecución.
- Puedes verificar los archivos presentes con:

```bash
ls
```

y tu ubicación actual con:

```bash
pwd
```

---

> 🛟 ¿Necesitas ayuda adicional? Abre un issue o consulta con tu equipo de desarrollo.
