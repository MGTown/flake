{ ... }:
{
  networking.firewall = {
    enable = true;
    allowPing = false;
    allowedTCPPorts = [ 25565 22255 ];
    allowedUDPPorts = [];
  };
}