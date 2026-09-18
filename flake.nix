{
  description = "Nix packaging for MihomoManager.MihomoMixin";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    {
      self,
      nixpkgs,
    }:
    let
      forAllSystems = nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed;
    in
    {
      packages = forAllSystems (system: {
        mihomo-manager-mihomo-mixin =
          nixpkgs.legacyPackages.${system}.callPackage ./packages/mihomo-manager-mihomo-mixin
            { };
      });
    };
}
