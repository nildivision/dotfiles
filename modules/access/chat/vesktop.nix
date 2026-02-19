{
  flake.modules.homeManager.vesktop = { pkgs, ... }: {
    programs.vesktop = {
      enable = true;
      settings = {
        minimizeToTray = false;
        customTitleBar = true;
      };
    };
  };
}
