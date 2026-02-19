{
  flake.modules.homeManager.zellij = {
    programs.zellij = {
      enable = true;
      settings.show_startup_tips = false;
    };
  };
}
