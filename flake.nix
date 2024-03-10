{
  description = "NixOS Raspberry Pi configuration flake";
  inputs.nixpkgs.url = "github:CHN-beta/nixpkgs/nixos-23.11";
  outputs = inputs:
  {
    nixosConfigurations.pi3b = inputs.nixpkgs.lib.nixosSystem
    {
      system = "aarch64-linux";
      modules =
      [
        "${inputs.nixpkgs}/nixos/modules/installer/sd-card/sd-image-aarch64.nix"
        { config.system.stateVersion = "22.11"; }
      ];
    };
  };
}