{ pkgs, ... }:

{
  services.mysql = {
    enable = true;
    package = pkgs.mariadb;

    settings = {
      mysqld = {
        port = 3306;
        bind-address = "127.0.0.1";

        tmp_table_size = "1024M";
        innodb_buffer_pool_size = "1024M";
        read_buffer_size = "2M";
        read_rnd_buffer_size = "1024K";
        join_buffer_size = "4M";
        thread_stack = "384K";
        binlog_cache_size = "192K";
        thread_cache_size = 192;
        table_open_cache = 1024;
        max_connections = 400;
        key_buffer_size = "512M";
      };
    };
  };
}