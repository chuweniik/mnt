{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs;
  [
     bash
     git
     pwgen
     unzip

     manpages
     posix_man_pages
     stdmanpages

     mc
     vim
     nano

     wget
     telnet
     p7zip
     lynx
  ];
}
