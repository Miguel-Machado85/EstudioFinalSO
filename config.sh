#!/bin/bash
set -e  # para detenerse si hay errores

cd /home/ubuntu/estudioFinalSO

python3 -m venv venv
source venv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt

sudo cp fastapi_srv.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable fastapi_srv.service
sudo systemctl start fastapi_srv.service