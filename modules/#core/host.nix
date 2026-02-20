{ inputs, config, ... }: {
  imports = [ inputs.flake-parts.flakeModules.modules ];

  systems = [ "x86_64-linux" ];

  flake.nixosModules.home-manager = {
    imports = [ inputs.home-manager.nixosModules.home-manager ];

    home-manager = {
      useGlobalPkgs = true;
      useUserPackages = true;
      extraSpecialArgs = { inherit inputs; };

      users.nildivision = { pkgs, ... }: {
        imports = builtins.attrValues config.flake.modules.homeManager;
        home.stateVersion = "25.11";
      };
    };
  };

  flake.nixosModules.state-version = {
    system.stateVersion = "25.11";
  };

  flake.nixosModules.nixpkgs = {
    nix.settings.experimental-features = [ "nix-command" "flakes" ];
    nixpkgs.config.allowUnfree = true;
  };

  flake.nixosConfigurations.desktop = inputs.nixpkgs.lib.nixosSystem {
    specialArgs = { inherit inputs; };
    modules = builtins.attrValues config.flake.nixosModules;
  };
}
