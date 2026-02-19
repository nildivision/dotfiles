{
  flake.nixosModules.users = { pkgs, ... }: {
    users.users.nildivision = {
      isNormalUser = true;
      description = "nixdesktop";
      extraGroups = [ "networkmanager" "wheel" ];
      shell = pkgs.nushell;
      packages = with pkgs; [];
    };

    services.getty.autologinUser = "nildivision";
  };
}
