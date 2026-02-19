{ inputs, ... }: {
  flake.nixosModules.catppuccin = {
    imports = [ inputs.catppuccin.nixosModules.catppuccin ];
    catppuccin = {
      enable = true;
      flavor = "macchiato";
      accent = "lavender";
    };
  };

  flake.modules.homeManager.catppuccin = {
    imports = [ inputs.catppuccin.homeModules.catppuccin ];
    catppuccin = {
      enable = true;
      flavor = "macchiato";
      accent = "lavender";
    };
  };
}
