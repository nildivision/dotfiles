{
  flake.modules.homeManager.niri-hotkey-overlay = {
    programs.niri.settings.hotkey-overlay.skip-at-startup = true;
  };
}
