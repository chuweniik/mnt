{ config, pkgs, ... }:

{

  users.extraUsers.niklas = {
    isNormalUser = true;
    uid = 1000;
    createHome = true;
    extraGroups = [ "dioi" "users" "wheel" "networkmanager"];
    group = "niklas";
  };

    users.groups.niklas.gid = 1000;

  
  
  users.extraUsers.niklas.openssh.authorizedKeys.keys = [ "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEA0kI0TyOgQilH2xtOTTDD0v8WFGb/968/uO/MhAR2IScDx7fJXvmWuTbzM6+uJB93gjDuVv04JYN4XMDXG89xQKtwNR6g7cmcNcduji2HKt+5fGeNcmo9MCtrxEkRsfUOQqThnJRRwKfcJ5qdHD02bRb1C5o+wggVFR0s/9zVOJIGynoddBcmwFZN+oCWkDnrq1/biW13gqzEEjs92cukgR0l/zt9x+7154E73vD+XqShkpxIpN8IGlLDFD0kIC7IxaxEv76Of+CaogqhyXIsZLO96Ofnco9wM/Jpc5zfrdfzZBmZGTTX8DPB4AVCRp7VITDBHX75Vl3+DqDnMZwHWQ==" ];

  users.extraUsers.linus = {
    isNormalUser = true;
    uid = 1001;
    createHome = true;
    extraGroups = [ "dioi" "wheel" "networkmanager"];
    group = "linus";
  };
  users.extraUsers.linus.openssh.authorizedKeys.keys = [ "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAsT4kkozv26VSNnmGyxX8tw5tjMlH5/Xnlt1EnRUteeysWJxxstfdHVVi8Nuc3W1nYSdZcVxAZSc9Rbck+eFgKacFSvi55Af6FYL0H1i4wovpgjS2yLKNuQ4J2TJyOTPPyRX/VPtGHu2FmKDFf9zc18K5s/W0PmxCTg293Aml4Xxncfbwxc094u9rjVHykTatHIYhekg9cb6dgdX4TiI6F9/WsoPSyx1nW2mVOArGviw+kzSpqLePZFFWQavbkMZjvN71Kuls867mk8nRyGfin753FpUAO4xSqgD9KKUyZdBIZR46t9dp6RjvZa7zrPcWtuuRiknlrGy0IOzFa49g2w=="];

  users.groups.linus.gid = 1001;

  users.extraUsers.dioi = {
    isNormalUser = true;
    home = "/var/lib/dioi/";
    uid = 999;
    createHome = true;
    group = "dioi";
    extraGroups = [ ];
  };
  # users.extraUsers.dioi.openssh.authorizedKeys.keys = [ "xxxxxxxxxxxxxx"];

  users.groups.dioi.gid = 999;
  
  users.extraUsers.choweniik = {
    isNormalUser = true;
    uid = 1002;
    createHome = true;
    extraGroups = [ "dioi" "wheel" "networkmanager"];
    group = "choweniik";
  };
  # users.extraUsers.choweniik.openssh.authorizedKeys.keys = [ ];

  users.groups.choweniik.gid = 1002;
}
