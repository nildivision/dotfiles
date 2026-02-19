{
  flake.modules.homeManager.nushell = { pkgs, ... }: {
    programs.nushell = {
      enable = true;
      extraConfig = ''
        $env.config.show_banner = false
      '';
      envFile.text = ''
        if ($env.DISPLAY? == null) and ((tty) == "/dev/tty1") {
          exec niri-session
        }
      '';
    };
  };
}
