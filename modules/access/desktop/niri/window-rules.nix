{
  flake.modules.homeManager.niri-window-rules = {
    programs.niri.settings.window-rules = [
      {
        geometry-corner-radius = {
          top-left = 4.;
          top-right = 4.;
          bottom-left = 4.;
          bottom-right = 4.;
        };
        clip-to-geometry = true;
      }
      {
        matches = [
          {
            app-id = "vesktop";
            at-startup = true;
          }
        ];
        open-on-workspace = "chat";
        open-maximized = true;
        open-focused = false;
      }
      {
        matches = [
          {
            app-id = "vesktop";
            title = ".*@.*";
          }
        ];
        block-out-from = "screencast";
      }
      {
        matches = [
          {
            app-id = "brave-browser";
            title = ".*Gmail.*";
          }
        ];
        block-out-from = "screencast";
      }
      {
        matches = [
          {
            app-id = "brave-browser";
            at-startup = true;
          }
        ];
        open-on-workspace = "browse";
        open-maximized = true;
        open-focused = false;
      }
      {
        matches = [
          {
            app-id = "com.mitchellh.ghostty";
            at-startup = true;
          }
        ];
        open-on-workspace = "shell";
        open-maximized = true;
        open-focused = false;
      }
    ];
  };
}
