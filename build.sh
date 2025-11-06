#set -o errexit

#pip install -r requirements.txt

#python manage.py collectstatic --no-input

#python manage.py makemigrations
#python manage.py migrate

#!/usr/bin/env bash
set -e

# instalar dependencias ya las instala el entorno de Render, pero si usas virtualenv local:
pip install -r requirements.txt

# migraciones
python manage.py migrate --noinput

# compilar archivos estáticos (si usas collectstatic)
python manage.py collectstatic --noinput
echo "Build completed."