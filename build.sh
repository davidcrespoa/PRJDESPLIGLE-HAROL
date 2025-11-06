#!/usr/bin/env bash
set -e  # Detener si hay un error

echo "Instalando dependencias..."
pip install -r requirements.txt

echo "Ejecutando migraciones..."
python prjrender/manage.py makemigrations --noinput
python prjrender/manage.py migrate --noinput

echo "Recolectando archivos estáticos..."
python prjrender/manage.py collectstatic --noinput

echo "✅ Build completado correctamente."
