#!/bin/bash
#installing ngrok
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok

#adding authtoken
ngrok authtoken 2Xf9VS1X9J8Cm0fDUD0WGUbGm4a_6YSNePWcAamMrBHixXB2X

#starting the server
./server.sh 

sleep 60
#make ngrok tunnel
ngrok tcp 25565