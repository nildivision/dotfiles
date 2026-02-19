{
  flake.modules.homeManager.niri-workspaces = {
    programs.niri.settings.workspaces = {
      "01" = { name = "chat"; };
      "02" = { name = "browse"; };
      "03" = { name = "shell"; };
    };
  };
}
