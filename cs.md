# disk
+ ssh root@localhost -p 2000
  + docker ps -as
  + `ls -rt /var/lib/docker/overlayfs/l` # time sort is correct
  + copilot 770M: v1.0.3 -> v1.0.105
    + old: {/root,/home/codespace}/.copilot/pkg/linux-x64/1.0.3/ 50Mx2
    + new: {/root,/home/codespace}/.cache/copilot/pkg/linux-x64/1.0.105/ 240Mx2, /usr/local/bin/copilot 190M elf

