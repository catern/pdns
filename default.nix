{ pkgs ? (import <nixpkgs> {}) }:

pkgs.powerdns.overrideAttrs (oldAttrs: {
  src = ./.;
  buildInputs = oldAttrs.buildInputs ++ [ pkgs.autoreconfHook pkgs.ragel pkgs.bison pkgs.flex pkgs.python3Packages.sphinx ];
})
