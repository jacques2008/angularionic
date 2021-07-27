#! /bin/bash
apt-get update && apt-get upgrade -y
apt-get install sudo -y
sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release screen mlocate tree software-properties-common -y \
        && sudo apt-get install libaio1 libaio-dev build-essential libssl-dev vim net-tools nginx default-jre openssh-server -y \
        && curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - \
        && sudo apt install nodejs -y \
        && sudo apt-get install gcc g++ make -y \
        && sudo curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/yarnkey.gpg >/dev/null \
        && sudo echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | sudo tee /etc/apt/sources.list.d/yarn.list \
        && sudo apt-get update && sudo apt-get install yarn -y \
        && sudo updatedb
