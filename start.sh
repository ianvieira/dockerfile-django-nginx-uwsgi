#!/bin/bash

SETTING_PATH=`find /home/django/ -name settings.py`

# Install requirements
if [ -f /home/django/src/requirements.txt ]; then
    pip3 install -r /home/django/src/requirements.txt
fi

python3 /home/django/src/manage.py collectstatic --noinput

# Start all the services
/usr/bin/supervisord -n
