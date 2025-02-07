{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = inputs: {
      nixosConfigurations = {
	myNixOS = inputs.nixpkgs.lib.nixosSystem {
	  system = "x86_64-linux";
	  modules = [
	    ./configuration.nix
	];
      };
    };
  };
}
