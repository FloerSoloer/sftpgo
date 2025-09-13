#!/bin/zsh

awd="${0:A:h}"
aservice='sftpgo.service'
aservice_dir="${XDG_CONFIG_HOME:-"${HOME}/.config"}/systemd/user"
sed 's;${AWD};'"${awd}"';' "${awd}/${aservice}.example" > "${aservice_dir}/${aservice}"
systemctl --user add-wants xdg-desktop-autostart.target "${aservice}"
systemctl --user start "${aservice}"
