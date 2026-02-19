{
  flake.modules.homeManager.darktable = { pkgs, ... }: {
    home.packages = [ pkgs.darktable ];
  };
}
