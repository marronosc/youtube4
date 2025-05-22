#!/bin/bash
set -e  # Salir si hay algún error

echo "=== INICIO DEL BUILD ==="
echo "Python version:"
python --version

echo "Pip version:"
pip --version

echo "=== INSTALANDO DEPENDENCIAS ==="
pip install --upgrade pip
pip install -r requirements.txt

echo "=== VERIFICANDO INSTALACIONES ==="
pip list | grep -E "(Flask|requests|gunicorn)"

echo "=== ESTRUCTURA DE ARCHIVOS ==="
ls -la

echo "=== BUILD COMPLETADO ==="