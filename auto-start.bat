@echo off
cd BrainyHead-Server
start python brain.py
cd ..
ngrok http 8000 --url https://curiously-assured-eft.ngrok-free.app