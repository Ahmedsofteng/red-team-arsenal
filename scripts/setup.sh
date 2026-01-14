#!/bin/bash

# Red Team Arsenal - Automated Setup Script
# This script installs all necessary dependencies and tools

set -e

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Banner
echo -e "${RED}"
cat << "EOF"
╦═╗╔═╗╔╦╗  ╔╦╗╔═╗╔═╗╔╦╗  ╔═╗╦═╗╔═╗╔═╗╔╗╔╔═╗╦  
╠╦╝║╣  ║║   ║ ║╣ ╠═╣║║║  ╠═╣╠╦╝╚═╗║╣ ║║║╠═╣║  
╩╚═╚═╝═╩╝   ╩ ╚═╝╩ ╩╩ ╩  ╩ ╩╩╚═╚═╝╚═╝╝╚╝╩ ╩╩═╝
EOF
echo -e "${NC}"
echo -e "${BLUE}Automated Setup Script${NC}"
echo -e "${YELLOW}⚠️  For authorized security testing only${NC}"
echo ""

# Check if running as root
if [ "$EUID" -ne 0 ]; then 
    echo -e "${YELLOW}[!] This script requires sudo privileges${NC}"
    echo -e "${BLUE}[*] Re-running with sudo...${NC}"
    sudo "$0" "$@"
    exit $?
fi

echo -e "${GREEN}[+] Starting installation...${NC}"
echo ""

# Update system
echo -e "${BLUE}[*] Updating system packages...${NC}"
apt update -qq

# Install base dependencies
echo -e "${BLUE}[*] Installing base dependencies...${NC}"
apt install -y \
    python3 \
    python3-pip \
    python3-dev \
    git \
    curl \
    wget \
    build-essential \
    libssl-dev \
    libffi-dev \
    ruby \
    ruby-dev \
    golang-go \
    nmap \
    netcat \
    socat \
    john \
    hashcat \
    hydra \
    sqlmap \
    nikto \
    dirb \
    gobuster \
    wfuzz \
    masscan \
    tcpdump \
    wireshark \
    metasploit-framework \
    exploitdb \
    seclists \
    wordlists \
    > /dev/null 2>&1

echo -e "${GREEN}[✓] Base dependencies installed${NC}"

# Install Python tools
echo -e "${BLUE}[*] Installing Python security tools...${NC}"
pip3 install --upgrade pip > /dev/null 2>&1
pip3 install \
    impacket \
    crackmapexec \
    bloodhound \
    mitm6 \
    responder \
    pwntools \
    requests \
    beautifulsoup4 \
    paramiko \
    scapy \
    > /dev/null 2>&1

echo -e "${GREEN}[✓] Python tools installed${NC}"

# Install Go tools
echo -e "${BLUE}[*] Installing Go security tools...${NC}"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest > /dev/null 2>&1
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest > /dev/null 2>&1
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest > /dev/null 2>&1
go install -v github.com/tomnomnom/assetfinder@latest > /dev/null 2>&1
go install -v github.com/tomnomnom/waybackurls@latest > /dev/null 2>&1
go install -v github.com/tomnomnom/httprobe@latest > /dev/null 2>&1

echo -e "${GREEN}[✓] Go tools installed${NC}"

# Clone additional tools
echo -e "${BLUE}[*] Cloning additional security tools...${NC}"
TOOLS_DIR="$HOME/red-team-tools"
mkdir -p "$TOOLS_DIR"

# Reconnaissance tools
git clone --quiet https://github.com/aboul3la/Sublist3r.git "$TOOLS_DIR/Sublist3r" 2>/dev/null || true
git clone --quiet https://github.com/laramies/theHarvester.git "$TOOLS_DIR/theHarvester" 2>/dev/null || true

# Exploitation tools
git clone --quiet https://github.com/sqlmapproject/sqlmap.git "$TOOLS_DIR/sqlmap" 2>/dev/null || true
git clone --quiet https://github.com/commixproject/commix.git "$TOOLS_DIR/commix" 2>/dev/null || true

# Post-exploitation tools
git clone --quiet https://github.com/carlospolop/PEASS-ng.git "$TOOLS_DIR/PEASS-ng" 2>/dev/null || true
git clone --quiet https://github.com/PowerShellMafia/PowerSploit.git "$TOOLS_DIR/PowerSploit" 2>/dev/null || true

# C2 Frameworks
git clone --quiet https://github.com/BishopFox/sliver.git "$TOOLS_DIR/sliver" 2>/dev/null || true

echo -e "${GREEN}[✓] Additional tools cloned${NC}"

# Setup directories
echo -e "${BLUE}[*] Setting up directory structure...${NC}"
mkdir -p ~/red-team-arsenal/{payloads,loot,logs,reports}

echo -e "${GREEN}[✓] Directory structure created${NC}"

# Set permissions
echo -e "${BLUE}[*] Setting permissions...${NC}"
chmod +x scripts/*.sh 2>/dev/null || true

echo -e "${GREEN}[✓] Permissions set${NC}"

# Final message
echo ""
echo -e "${GREEN}╔═══════════════════════════════════════╗${NC}"
echo -e "${GREEN}║  ✓ Installation Complete!            ║${NC}"
echo -e "${GREEN}╚═══════════════════════════════════════╝${NC}"
echo ""
echo -e "${BLUE}[*] Tools installed in: $TOOLS_DIR${NC}"
echo -e "${BLUE}[*] Arsenal directory: ~/red-team-arsenal${NC}"
echo ""
echo -e "${YELLOW}[!] Remember: Use for authorized testing only!${NC}"
echo ""
echo -e "${BLUE}Next steps:${NC}"
echo -e "  1. Review documentation: cat docs/SETUP.md"
echo -e "  2. Verify installation: ./scripts/verify.sh"
echo -e "  3. Start testing: ./scripts/recon.sh target.com"
echo ""
