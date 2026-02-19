{
  flake.modules.homeManager.fonts = { pkgs, ... }: {
    home.packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      nerd-fonts.jetbrains-mono
      font-awesome
    ];

    fonts.fontconfig.enable = true;
  };
}
