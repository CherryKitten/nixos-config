{ config, pkgs, lib, ... }:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
    modules/system.nix
    modules/users.nix
    modules/x.nix
  ];
}
