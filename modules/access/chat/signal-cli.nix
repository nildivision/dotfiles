{
  flake.modules.homeManager.signal-cli = { pkgs, ... }: {
    home.packages = [ pkgs.signal-cli ];
  };
}
