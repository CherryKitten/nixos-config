{ config, pkgs, lib, ... }:

{
  networking.hostName = "$CHANGEME";
  networking.networkmanager.enable = true;
  services.openssh.enable = true;
  system.autoUpgrade.enable = true;

  virtualisation.virtualbox.host.enable = true;
  virtualisation.docker.enable = true;

  fonts = {
    enableFontDir = true;
    enableDefaultFonts = true;
    fonts = with pkgs; [
          powerline-fonts
    ];
  };

  environment.systemPackages = with pkgs; [
    bitwarden
    curl
    firefox
    git
    gparted
    thunderbird
    tmux
    tree
    vagrant
    vlc
    webstorm
    wget
    youtube-dl
  ];

  time.timeZone = "Europe/Berlin";
  i18n.consoleKeyMap = "de";
}
