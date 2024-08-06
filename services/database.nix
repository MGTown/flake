{ pkgs, ... }:
{
  # 使用 mariadb
  services.mysql = {
    enable = true;
    package = pkgs.mariadb;

    settings = {
      # 服务器的端口和监听ip
      mysqld = {
        port = 3306;
        bind-address = "127.0.0.1";
      };
    };
  };
}