let
  sources = import nix/sources.nix;
  pkgs = import sources.nixpkgs {};
  easy-purescript = import sources.easy-purescript-nix {};
in
  pkgs.mkShell {
    buildInputs = with easy-purescript; [ pscid purs spago ];
  }
