{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }@inputs:
    {
      nixosConfigurations.physical-server = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./machine/common.nix
          home-manager.nixosModules.home-manager
          { home-manager.users.mgtown = import ./home/home.nix; }
        ];
      };
    };
}