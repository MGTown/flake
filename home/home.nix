{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [ vim-nix ]; 
    viAlias = true;
    vimAlias = true;
  };

  home.stateVersion = "24.05";
}