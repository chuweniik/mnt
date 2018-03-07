#!/bin/sh
nix-env -i git
cp /root/mnt/root/.gitconfig /root/
cd /

echo "################################################################################"
echo "# WARNING:           CLEANING AND MOUNTING ROOT FILESYSTEM!!!!                 #"
echo "################################################################################"

mkfs /dev/dioi/root
mount /dev/dioi/root /mnt
rmdir /mnt/lost+found
git clone file:///root/mnt/
umount /mnt
fsck.ext4 /dev/dioi/root
mount /dev/dioi/root /mnt

echo "################################################################################"
echo "# WARNING:           CLEANING AND MOUNTING VAR FILESYSTEM!!!!                  #"
echo "################################################################################"


mkfs.ext4 /dev/data/var
mount /dev/data/var /mnt/var

echo "################################################################################"
echo "# WARNING:           CLEANING AND MOUNTING NIX FILESYSTEM!!!!                  #"
echo "################################################################################"

mkfs.ext4 /dev/data/nix
mount /dev/data/nix /mnt/nix

################################################################################
# MOUNTING SECRET FILES                                                        #
################################################################################
mount /dev/sdb2 /mnt/root/keys
