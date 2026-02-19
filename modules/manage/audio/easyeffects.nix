{
  flake.modules.homeManager.easyeffects = { pkgs, ... }: {
    services.easyeffects.enable = true;
  };
}
