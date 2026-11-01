#!/bin/sh
[ ! $UID = 0 ] && echo sudo && exit 1
set -e

for i in /dev/sd?15; do
  mount ${i%5} /mnt
  cat /home/codespace/.ssh/id_ed25519.pub >> /mnt/root/.ssh/authorized_keys
  cp -r /home/codespace/.config/htop /mnt/root/.config/
  umount /mnt
done

echo ssh root@localhost -p 2000

