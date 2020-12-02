{
  nixpkgs ? builtins.fetchTarball {
    name = "nixos-20.09";
    url = "https://github.com/nixos/nixpkgs/archive/nixos-20.09.tar.gz";
  },
} :

let
 pkgs = import nixpkgs {};
in
with pkgs.lib;

pkgs.mkShell rec {
  name = "test-shell";
  buildInputs = with pkgs; [ cowsay ];
}
