{pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [ vim-nix ]; 
    viAlias = true;
    vimAlias = true;
  };
}