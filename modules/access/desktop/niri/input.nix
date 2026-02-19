{
  flake.modules.homeManager.niri-input = {
    programs.niri.settings.input = {
      keyboard.numlock = true;

      mouse = {
        accel-speed = 0;
        accel-profile = "flat";
      };
    };
  };
}
