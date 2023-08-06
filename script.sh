#!/bin/bash

# List of packages to be removed
packages=(
    maltego msfpc set faraday recordmydesktop pipal cutycapt hashdeep
    bulk-extractor binwalk autopsy sleuthkit pdfid pdf-parser
    forensic-artifacts guymager magicrescue scalpel scrounge-ntfs
    dbd powersploit sbd dns2tcp exe2hexbat iodine miredo
    proxychains4 proxytunnel ptunnel pwnat sslh stunnel4
    udptunnel laudanum weevely mimikatz dnschef netsniff-ng
    rebind sslsplit tcpreplay ettercap-graphical macchanger
    mitmproxy responder wireshark metasploit-framework
    exploitdb sqlmap sqlitebrowser bully fern-wifi-cracker
    spooftooph aircrack-ng kismet pixiewps reaver wifite
    clang nasm radare2 chntpw hashcat hashid hash-identifier
    ophcrack ophcrack-cli samdump2 hydra hydra-gtk onesixtyone
    patator thc-pptp-bruter passing-the-hash mimikatz smbmap
    cewl crunch john medusa ncrack wordlists rsmangler
    dnsenum dnsrecon fierce lbd wafw00f arping fping hping3
    masscan thc-ipv6 nmap theharvester netdiscover netmask
    enum4linux nbtscan smbmap swaks onesixtyone snmpcheck
    ssldump sslh sslscan sslyze dmitry ike-scan legion
    recon-ng spike voiphopper nikto nmap unix-privesc-check
    wpscan burpsuite dirb dirbuster wfuzz cadaver davtest
    skipfish wapiti whatweb commix zaproxy freerdp2-x11
    scalpel spiderfoot evil-winrm ffuf gtkhash impacket-scripts
    minicom netcat-traditional python3-scapy tcpdump webshells
)

# Function to remove packages
remove_packages() {
    for package in "${packages[@]}"; do
        sudo apt remove -y "$package"
    done
}

# Remove packages and clean up
remove_packages
sudo apt autoclean 
sudo apt autoremove
sudo apt update

# Uncomment the following line if you want to remove configurations of all removed packages
# dpkg -l | grep '^rc' | awk '{print $2}' | sudo xargs dpkg --purge

echo "Script has been Executed Successfully"
echo "All the Listed tools from the Linux has been removed Successfully"
echo "Thanks for using this Script"
