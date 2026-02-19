{ inputs, ... }: {
  flake.modules.homeManager.floorp = { pkgs, ... }: {
    programs.floorp = {
      enable = true;
      profiles.default = {
        id = 0;
        isDefault = true;
        extensions = {
          force = true;
          packages = with inputs.firefox-addons.packages.${pkgs.system}; [
            firefox-color
            ublock-origin
            stylus
          ];
        };
        settings = {
          "extensions.activeThemeID" = "FirefoxColor@mozilla.com";
        };
      };
    };
  };
}
