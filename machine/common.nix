{ pkgs, ... }:
{
  imports = [
    ../services/database.nix
    ../atoms/boot.nix
    ../atoms/storages.nix
    ../atoms/i18n.nix
    ../atoms/networking.nix
    ../atoms/nix.nix
  ];

  time.timeZone = "Asia/Shanghai";

  users.users.mgtown = {
    isNormalUser = true;
    description = "Server default account";
    uid = 1000;
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  environment.systemPackages = with pkgs; [
    neovim
    git
  ];

  system.stateVersion = "24.11";
}