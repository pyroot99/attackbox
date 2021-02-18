FROM kalilinux/kali-bleeding-edge
RUN apt update && apt upgrade -y && apt full-upgrade -y && apt dist-upgrade -y
RUN apt install sudo python3-pip vim python3 fish exa tmux metasploit-framework nmap tcpdump dirbuster gobuster dirb -y
COPY dotfiles /tmp/dotfiles
RUN mkdir -p /root/.config/fish
RUN cp /tmp/dotfiles/.tmux.conf /root/.tmux.conf
RUN cp -r /tmp/dotfiles/fish/* /root/.config/fish/
RUN curl -L https://get.oh-my.fish | fish 2>/dev/null
RUN git clone https://gitlab.com/dwt1/shell-color-scripts.git /tmp/shell-color-scripts
RUN cd /tmp/shell-color-scripts
RUN rm -rf /opt/shell-color-scripts || return 1
RUN mkdir -p /opt/shell-color-scripts/colorscripts || return 1
RUN cp -rf colorscripts/* /opt/shell-color-scripts/colorscripts
RUN cp colorscript.sh /usr/bin/colorscript
RUN fish -c "omf install batman" 2>/dev/null
WORKDIR /root
ENTRYPOINT ["fish"]
