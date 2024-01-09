{ pkgs ? import ../../../nix { } }:
let dailyd = (pkgs.callPackage ../../../. { });
in
dailyd.overrideAttrs (oldAttrs: {
  patches = oldAttrs.patches or [ ] ++ [
    ./broken-dailyd.patch
  ];
})
