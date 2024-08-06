{ lib, ... }:
{
  networking.firewall = {
    enable = true;
    allowPing = true;
    allowedTCPPorts = [ 25565 22255 ];
    allowedUDPPorts = [];
  };
}