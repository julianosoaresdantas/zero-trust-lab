#!/bin/bash
# Script de Inventário e Descoberta de Ativos (Zero Trust Discovery)
SUBNET=${1:-"192.168.1.0/24"}

echo "[*] Iniciando varredura silenciosa de ativos em: $SUBNET"
sudo nmap -sn $SUBNET -oN discovery_report.txt

echo "[*] Verificando portas e serviços abertos localmente:"
sudo ss -tulnp

echo "[+] Relatório salvo em discovery_report.txt"
