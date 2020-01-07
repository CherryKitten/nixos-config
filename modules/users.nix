{ config, pkgs, lib, ... }:

{
  programs.zsh.enable = true;
  programs.zsh.enableCompletion = true;
  programs.zsh.ohMyZsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  users.users = {
    sammy = {
      isNormalUser = true;
      description = "Sammy";
      extraGroups = ["wheel" "networkmanager" "vboxusers" "docker"];
      openssh.authorizedKeys.keys = ["AAAAB3NzaC1yc2EAAAADAQABAAABAQC7r9T4Ish/gpV7kfwwNPTdLdpnzV8cUMefgD25uKX9mORpxnMBnwYEgT36jkYBDVxSdhTrmPbfNJXrcdApNidAacL/w11jHgie+kD+Z/u0XxayDl1X44NJ8LQ2Ckm4mZQUOPZk741f91fXdw/CKwkSDflvmMluGuolqIcwsA6d96PLlT47pLEsNnSXqOcCtSrHASNn8WEbPv7JpZ5T2rMGUh3Jy6GFIito3RbbuJZOj/FFGZxl0ke93PGvh01wPXlFscSa356nrLytypzKOca1JTCSaeUxSfhkOZpoAliT6K41TWVTFDYdZ11F73VIi8aeuGF685bEB0Hcizjo5up1"];
    };
  };
}
