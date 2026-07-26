# Visibilidade de Tráfego e DNS Seguro (DoH/DoT)

Para garantir visibilidade e bloqueio preventivo de domínios maliciosos:
1. Configure o resolvedor DNS para usar IPs focados em segurança (ex: Cloudflare 1.1.1.2 / 1.0.0.2).
2. Monitore consultas DNS locais e saídas TLS para identificar conexões de C2 (Command and Control).
