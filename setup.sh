#!/bin/bash

# Warna biar keren
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}🚀 Memulai Deployment Sistem PKM-KC...${NC}"

# 1. Update/Clone Edge Server
if [ ! -d "demo-edge-offline-node" ]; then
  echo "📦 Cloning Edge Server..."
  git clone https://github.com/GreenDreamX/demo-edge-offline-node.git
else
  echo "🔄 Updating Edge Server..."
  cd demo-edge-offline-node && git pull && cd ..
fi

# 2. Update/Clone Mock Cloud
if [ ! -d "demo-satusehat-mock-gateway" ]; then
  echo "📦 Cloning Mock Cloud..."
  git clone https://github.com/GreenDreamX/demo-satusehat-mock-gateway.git
else
  echo "🔄 Updating Mock Cloud..."
  cd demo-satusehat-mock-gateway && git pull && cd ..
fi

# 3. Build & Run
echo -e "${GREEN}🐳 Membangun Container (Docker Compose)...${NC}"
docker compose up -d --build

echo -e "${GREEN}✅ DEPLOYMENT SUKSES!${NC}"
echo "----------------------------------------"
echo "🖥️  Edge Dashboard : http://localhost:3005"
echo "☁️  Mock Cloud API : http://localhost:5005"
echo "----------------------------------------"