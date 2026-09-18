# MihomoManager.MihomoMixin-Nix

Nix packaging for [MihomoManager.MihomoMixin](https://github.com/MihomoManager/MihomoManager.MihomoMixin) — a Mihomo configuration merge tool with merge, edit, and JS scripting actions.

## Adding as a flake input

```nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    mihomo-mixin.url = "github:MihomoManager/MihomoManager.MihomoMixin-Nix";
  };
}
```

## Package

The binary is exposed as `MihomoManager.MihomoMixin`:

```nix
mihomo-mixin.packages.${system}.mihomo-manager-mihomo-mixin
```

Or try it directly from the CLI:

```console
$ nix shell github:MihomoManager/MihomoManager.MihomoMixin-Nix
```

## home-manager

Add it to your user environment via `home.packages`:

```nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    mihomo-mixin.url = "github:MihomoManager/MihomoManager.MihomoMixin-Nix";
  };

  outputs = { home-manager, mihomo-mixin, ... }: {
    homeConfigurations.alice = home-manager.lib.homeManagerConfiguration {
      modules = [
        ({ pkgs, ... }: {
          home.packages = [
            mihomo-mixin.packages.${pkgs.system}.mihomo-manager-mihomo-mixin
          ];
        })
      ];
    };
  };
}
```

---

All documentation and `description` fields in this repository are AI-generated.
