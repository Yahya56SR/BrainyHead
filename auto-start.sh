#!/bin/bash
cd BrainyHead-Server
python brain.py &
ngrok http 8000 --url https://curiously-assured-eft.ngrok-free.app