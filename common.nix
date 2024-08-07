{ pkgs, ... }:
{
  imports = [
    ./atoms/kernel.nix
    ./atoms/nix.nix

    ./machine/firewall.nix
    ./machine/disks.nix
    ./machine/users.nix

    ./services/database.nix
  ];

  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };

    initrd.kernelModules = [ ];
    kernelModules = [ "kvm-amd" ];
    extraModulePackages = [ ];
  };

  time.timeZone = "Asia/Shanghai";

  powerManagement.cpuFreqGovernor = "performance";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  networking = {
    networkmanager.enable = true;
    hostName = "physical-server";
    useDHCP = lib.mkDefault true;
  };

  environment.systemPackages = with pkgs; [
    git
    unzip
    fastfetch
    tmux
  ];

  system.stateVersion = "24.11";
}