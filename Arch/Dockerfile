FROM archlinux:latest
# Downloading blackarch installation script
RUN curl -o /tmp/strap.sh https://blackarch.org/strap.sh && chmod +x /tmp/strap.sh
# Executing the downloaded file
RUN /tmp/strap.sh 2>/dev/null
# copying script that installs tools
COPY *.sh /tmp/ 
# Making all scripts in /tmp/ as executables
RUN chmod +x /tmp/*.sh
# Copying dotfiles
COPY dotfiles /tmp/dotfiles
# Creating yay user to install aur packages
RUN useradd -m yay 
# giving user yay sudo previleges
RUN echo -e "root ALL=(ALL:ALL) NOPASSWD:ALL\nyay ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers
# Running the installation script
# RUN pacman -Syu --noconfirm
# RUN pacman -S wget net-tools git which yay tmux python3 python-pip vim netcat fish exa base-devel sudo --noconfirm
# RUN sudo -u yay yay -S nmap metasploit sqlmap gobuster dirbuster dirb wfuzz --noconfirm
# RUN sudo -u yay yay -S shell-color-scripts --noconfirm
RUN /tmp/install.sh 2>/dev/null
# Running the configuration script
RUN /tmp/configure.sh 2>/dev/null
# Setting working directory to root
WORKDIR /root
# Setting the Entrypoint
ENTRYPOINT ["fish"]

