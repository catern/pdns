{ pkgs ? (import <nixpkgs> {}) }:

pkgs.pdns-recursor.overrideAttrs (oldAttrs: {
  src = ./.;
  buildInputs = oldAttrs.buildInputs ++ [ pkgs.autoreconfHook pkgs.ragel pkgs.bison pkgs.flex ];
})
