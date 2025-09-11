#!/bin/zsh

awd="${0:A:h}"
aservice='sftpgo.service'
aservice_dir="${XDG_CONFIG_HOME:-"${HOME}/.config"}/systemd/user"
sed 's;${APATH};'"${awd}"/docker-compose.yml';' "${awd}/${aservice}.example" > "${aservice_dir}/${aservice}"
systemctl --user add-wants autostart.target "${aservice}"
systemctl --user start "${aservice}"
