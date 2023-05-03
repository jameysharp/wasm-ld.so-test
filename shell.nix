{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    (pkgs.emscripten.override { llvmPackages = pkgs.llvmPackages_15; })
    pkgs.binaryen

    # keep this line if you use bash
    pkgs.bashInteractive
  ];
}
