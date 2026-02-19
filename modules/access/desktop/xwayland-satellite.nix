{
  flake.modules.homeManager.xwayland-satellite = { pkgs, ... }: {
    home.packages = [ pkgs.xwayland-satellite ];
  };
}
