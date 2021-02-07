#!/bin/bash
# Updating pacman
pacman -Syu --noconfirm
# Installing basic programs
echo "Installing Basic Programs"
pacman -S wget git which yay tmux python3 python-pip vim netcat fish exa base-devel sudo --noconfirm
# Installing tools
echo "Installing Tools"
sudo -u yay yay -S nmap metasploit sqlmap gobuster dirbuster dirb wfuzz --noconfirm
# installing shell-color-scripts
sudo -u yay yay -S shell-color-scripts --noconfirm
