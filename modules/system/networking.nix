{
  flake.nixosModules.networking = {
    networking.hostName = "desktop";
    networking.networkmanager.enable = true;
  };
}
