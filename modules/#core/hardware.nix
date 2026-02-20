{ inputs, ... }: {
  flake.nixosModules.hardware = { config, lib, pkgs, modulesPath, ... }: {
    imports = [ (modulesPath + "/installer/scan/not-detected.nix") ];
    
    boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "ahci" "usb_storage" "usbhid" "sd_mod" ];
    boot.initrd.kernelModules = [ ];
    boot.kernelModules = [ "kvm-amd" ];
    boot.extraModulePackages = [ ];
    
    fileSystems."/" = {
      device = "/dev/disk/by-uuid/a1577301-171e-4839-a15c-74ea15217dd3";
      fsType = "btrfs";
      options = [ "subvol=@" ];
    };
    
    fileSystems."/home" = {
      device = "/dev/disk/by-uuid/a1577301-171e-4839-a15c-74ea15217dd3";
      fsType = "btrfs";
      options = [ "subvol=@home" ];
    };
    
    fileSystems."/boot" = {
      device = "/dev/disk/by-uuid/ED81-45C8";
      fsType = "vfat";
      options = [ "fmask=0077" "dmask=0077" ];
    };
    
    swapDevices = [ ];
    
    nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
    hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
  };
}
