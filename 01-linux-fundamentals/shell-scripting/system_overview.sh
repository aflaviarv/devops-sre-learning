#!/bin/bash

# Nome do arquivo de saída
data=$(date +%Y-%m-%d_%H-%M-%S)
output_file="system_report_$data.txt"

# Função para adicionar separador no relatório
add_separator() {
    echo "====================================" >> "$output_file"
}

# Criando o relatório
{
    echo "Relatório do Sistema - $(date)"
    add_separator
    
    # Informações do sistema
    echo "🔹 Informações do Sistema:"
    echo "Hostname: $(hostname)"
    echo "Distribuição: $(lsb_release -d | cut -f2)"
    echo "Kernel: $(uname -r)"
    add_separator
    
    # Uso de disco
    echo "🔹 Uso de Disco:"
    df -h | grep -E '^/dev/'
    add_separator
    
    # Memória RAM e Swap
    echo "🔹 Uso de Memória:"
    free -h
    add_separator
    
    # Processos mais pesados
    echo "🔹 Top 10 Processos Consumindo CPU:"
    ps -eo pid,comm,%cpu --sort=-%cpu | head -n 11
    add_separator
    
    # Status da Rede
    echo "🔹 Endereços de Rede:"
    ip -br a | grep -v LOOPBACK
    add_separator
    
    echo "🔹 Conexões Ativas:"
    ss -tulnp
    add_separator
    
    # Pacotes instalados e atualizações pendentes
    echo "🔹 Pacotes Instalados e Atualizações Pendentes:"
    if command -v apt >/dev/null; then
        echo "Total de pacotes instalados: $(dpkg --list | wc -l)"
        echo "Atualizações disponíveis: $(apt list --upgradable 2>/dev/null | wc -l)"
    elif command -v yum >/dev/null; then
        echo "Total de pacotes instalados: $(yum list installed | wc -l)"
        echo "Atualizações disponíveis: $(yum check-update | wc -l)"
    fi
    add_separator
    
    # Serviços rodando
    echo "🔹 Serviços em Execução:"
    systemctl list-units --type=service --state=running | head -n 15
    add_separator
} > "$output_file"

# Mensagem de conclusão
echo "✅ Relatório gerado com sucesso: $output_file"