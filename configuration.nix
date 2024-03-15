{ config, pkgs, ... }:

{
  imports = [ <nixpkgs/nixos/modules/installer/cd-dvd/installation-cd-minimal.nix> ];

  networking.hostName = "ChrisStockApp-nixos";

  i18n.defaultLocale = "en_US.UTF-8";
  time.timeZone = "America/New_York";
  
  
  environment.systemPackages = with pkgs; [
    neofetch
    neovim  
    wget
    gh
    git
    lazygit
  ];
  users.users.chrisj = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable 'sudo' for the user.
  };  
}
