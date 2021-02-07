FROM archlinux:latest
#Downloading blackarch installation script
RUN curl -o /tmp/strap.sh https://blackarch.org/strap.sh
# Executing the downloaded file
RUN bash /tmp/strap.sh
# copying script that installs tools
COPY *.sh /tmp/
#Copying dotfiles
COPY dotfiles /tmp/dotfiles
# Creating yay user to install aur packages
RUN useradd -m yay 
# giving user yay sudo previleges
RUN echo -e "root ALL=(ALL:ALL) NOPASSWD:ALL\nyay ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers
# Running the installation script
RUN bash /tmp/install.sh
# Running the configuration script
RUN bash /tmp/configure.sh
#Setting working directory to root
WORKDIR /root
#Setting the Entrypoint
ENTRYPOINT ["fish"]

