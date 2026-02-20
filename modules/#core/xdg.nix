{
  flake.nixosModules.xdg = { pkgs, ... }: {
    environment.pathsToLink = [
      "/share/applications"
      "/share/xdg-desktop-portal"
    ];

    xdg.portal = {
      enable = true;
      extraPortals = with pkgs; [ xdg-desktop-portal-gnome xdg-desktop-portal-gtk ];
      configPackages = [ pkgs.niri ];
    };
  };
}
