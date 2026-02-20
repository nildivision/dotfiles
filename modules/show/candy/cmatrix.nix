{
  flake.modules.homeManager.cmatrix = { pkgs, ... }: {
    home.packages = [ pkgs.cmatrix ];
  };
}
