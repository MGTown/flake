{ pkgs, ... }:
{
  programs.java.enable = true;
  programs.java.package = pkgs.zulu;
}