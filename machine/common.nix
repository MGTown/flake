{ pkgs, ... }:
{
  imports = [
    ../services/database.nix
    ../atoms/boot.nix
    ../atoms/storages.nix
    ../atoms/i18n.nix
    ../atoms/networking.nix
    ../atoms/nix.nix
    ../atoms/firewall.nix
  ];

  time.timeZone = "Asia/Shanghai";

  environment.systemPackages = with pkgs; [
    neovim
    git
  ];

  system.stateVersion = "24.11";
}