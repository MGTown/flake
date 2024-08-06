{ ... }:
{
  networking = {
    networkmanager.enable = true;
    hostName = "physical-server";
    useDHCP = lib.mkDefault true;
  };
}