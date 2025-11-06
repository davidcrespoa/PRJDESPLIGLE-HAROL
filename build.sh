#!/usr/bin/env bash
set -e

echo "🚀 Iniciando build en Render..."

# Instalar dependencias
pip install -r requirements.txt

# Entrar en el directorio del proyecto donde está manage.py
cd prjrender

echo "📦 Ejecutando migraciones..."
python ./prjrender/manage.py makemigrations --noinput
python ./prjrender/manage.py migrate --noinput

echo "🧱 Recolectando archivos estáticos..."
python manage.py collectstatic --noinput

echo "✅ Build completado correctamente."

