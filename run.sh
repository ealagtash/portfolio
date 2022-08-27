#!/bin/bash

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
pyenv init -
. .venv/bin/activate

python3 manage.py migrate
python3 manage.py collectstatic --noinput

# Start the first process
gunicorn Ehsan.wsgi:application --bind 0.0.0.0:8000 &
# Start the second process
nginx -g "daemon off;" &

# Wait for any process to exit
wait -n

# Exit with status of process that exited first
exit $?