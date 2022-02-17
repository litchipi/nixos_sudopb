{ config, lib, pkgs, ... }:
{
  config = {
    users.users.nx = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      password = "nx";
    };

    security.sudo.enable = true;
    # system.activationScripts.fix_sudo_perms = {
    #   text = ''
    #     if ls -l /nix/store | grep sudo | grep -q nogroup; then
    #       mount -o remount,rw  /nix/store
    #       chown -R root /nix/store
    #     fi
    #   '';
    #   deps = [];
    # };

    users.mutableUsers = false;
  };
}
