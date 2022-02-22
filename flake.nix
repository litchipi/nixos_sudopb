{
  description = "NixOs config builder";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    nixosgen = {
      url = "github:nix-community/nixos-generators";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixosgen }:
  {
    vm = nixosgen.nixosGenerate {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      format = "vm-nogui";
      modules = [
        ./machine_config.nix
      ];
    };
  };
}
