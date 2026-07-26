#!/bin/bash
# Simulação de Playbook SOAR para Resposta a Incidentes (via iptables)
MALICIOUS_IP=$1

if [ -z "$MALICIOUS_IP" ]; then
    echo "Uso: $0 <IP_MALICIOSO>"
    exit 1
fi

echo "[!] ALERTA: Isolando IP hostil $MALICIOUS_IP via iptables..."
sudo iptables -A INPUT -s $MALICIOUS_IP -j DROP

echo "[+] IP bloqueado com sucesso. Regras ativas para o IP:"
sudo iptables -L INPUT -v -n | grep $MALICIOUS_IP
