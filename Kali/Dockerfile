FROM kalilinux/kali-bleeding-edge
RUN apt update && apt upgrade -y && apt full-upgrade -y && apt dist-upgrade -y
RUN apt install sudo python3-pip vim python3 fish exa tmux metasploit-framework nmap tcpdump dirbuster gobuster dirb -y
RUN cp /tmp/dotfiles/.tmux.conf ~/.tmux.conf
RUN cp -r /tmp/dotfiles/fish/* ~/.config/fish/
RUN curl -L https://get.oh-my.fish | fish
RUN fish -c "omf install batman"
WORKDIR /root
ENTRYPOINT ["fish"]
