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
        echo "Removing: $package"
        sudo apt remove -y "$package"
    done
}

# Display the list of tools to be removed
echo "The following tools will be removed:"
for package in "${packages[@]}"; do
    echo "$package"
done

# Ask user for confirmation
read -p "This script will remove Above Mentioned tools from your system(if it is available). Do you want to continue? (y/n): " confirm
if [[ $confirm =~ ^[Yy]$ ]]; then
    remove_packages
    sudo apt autoclean 
    sudo apt autoremove
    sudo apt update
    echo "All the listed tools have been removed successfully."
    echo "Thanks for using this script."
else
    echo "Operation cancelled. No tools were removed."
fi
