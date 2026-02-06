# PKM-KC Simulation Ops 🚀

Repository orkestrasi (Infrastructure as Code) untuk sistem **Portable Edge Server**.
Repo ini menggabungkan dua microservices:

1. **Edge Server** (Frontend/Offline Logic) - Port 3005
2. **Mock SATUSEHAT** (Cloud Simulation) - Port 5005

## Cara Install (Deployment)

Cukup jalankan satu baris perintah ini di Server Ubuntu/Raspberry Pi:

```bash
git clone [https://github.com/GreenDreamX/demo-simulation-ops.git](https://github.com/GreenDreamX/demo-simulation-ops.git)
cd demo-simulation-ops
chmod +x setup.sh
./setup.sh