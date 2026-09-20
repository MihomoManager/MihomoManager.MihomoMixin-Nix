{
  lib,
  buildDotnetModule,
  fetchFromGitHub,
  dotnetCorePackages,
}:

buildDotnetModule (finalAttrs: {
  pname = "mihomo-manager-mihomo-mixin";
  version = "0.3.1";

  src = fetchFromGitHub {
    owner = "MihomoManager";
    repo = "MihomoManager.MihomoMixin";
    rev = "v${finalAttrs.version}";
    hash = "sha256-Q83/MJVk6dF2YgdyhJOHXqV2yW6GgZ6myHTiG7kuho8=";
  };

  projectFile = "src/MihomoManager.MihomoMixin/MihomoManager.MihomoMixin.csproj";
  dotnet-sdk = dotnetCorePackages.sdk_10_0;

  nugetDeps = ./deps.nix;

  strictDeps = true;
  __structuredAttrs = true;

  meta = {
    description = "Mihomo configuration merge tool with merge, edit, and JS scripting actions";
    homepage = "https://github.com/MihomoManager/MihomoManager.MihomoMixin";
    license = lib.licenses.mit;
    mainProgram = "MihomoManager.MihomoMixin";
  };
})
