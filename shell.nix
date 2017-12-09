# To build the document on Nix-based systems:
#   nix-shell ./shell.nix --run make


with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "rules-env";
  buildInputs = [
    ghostscript
    gnumake
    imagemagick
    inkscape
    (texlive.combine {
      inherit (texlive)
        scheme-basic
        collection-fontsrecommended
        booktabs
        l3kernel
        l3packages
        siunitx;
    })
  ];
}
