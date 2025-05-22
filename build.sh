#!/bin/bash
set -e  # Salir si hay algún error

echo "=== INICIO DEL BUILD ==="
echo "Python version:"
python --version

echo "Pip version:"
pip --version

echo "=== INSTALANDO DEPENDENCIAS ==="
pip install --upgrade pip
echo "Installing requirements from requirements.txt..."
pip install -r requirements.txt

echo "=== VERIFICANDO INSTALACIONES ==="
echo "Packages installed:"
pip list

echo "=== VERIFICANDO FLASK ESPECÍFICAMENTE ==="
python -c "import flask; print('Flask version:', flask.__version__)"

echo "=== ESTRUCTURA DE ARCHIVOS ==="
ls -la

echo "=== BUILD COMPLETADO EXITOSAMENTE ==="