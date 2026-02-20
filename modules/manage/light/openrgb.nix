{
  flake.nixosModules.openrgb = {
    services.hardware.openrgb.enable = true;
  };
  flake.modules.homeManager.openrgb = { pkgs, ... }: {
    home.packages = [ pkgs.openrgb-with-all-plugins ];
  };
}
