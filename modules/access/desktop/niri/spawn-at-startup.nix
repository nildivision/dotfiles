{
  flake.modules.homeManager.niri-spawn = {
    programs.niri.settings.spawn-at-startup = [
      { command = [ "niri" "msg" "action" "focus-workspace" "browse" ]; }
      { command = [ "vesktop" ]; }
      { command = [ "brave" ]; }
      { command = [ "ghostty" "-e" "zellij" ]; }
    ];
  };
}
