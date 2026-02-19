{
  flake.modules.homeManager.ghostty = { pkgs, ... }: {
    programs.ghostty = {
      enable = true;
      settings = {
        font-family = "JetBrainsMono Nerd Font";
        font-size = 12;
        gtk-titlebar = false;
        window-decoration = false;
      };
    };
  };
}
