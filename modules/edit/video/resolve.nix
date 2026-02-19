{
  flake.modules.homeManager.resolve = { pkgs, ... }: {
    home.packages = [ pkgs.davinci-resolve ];
  };
}
