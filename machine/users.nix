{ ... }:
{
  users.users = {
    mgtown = {
      isNormalUser = true;
      description = "Server default account";
      uid = 1000;
      packages = with pkgs; [
      ];
    };

    tsubaki = {
      isNormalUser = true;
      description = "TsubakiDev's account";
      uid = 1001;
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [
      ];
    };
  };
}