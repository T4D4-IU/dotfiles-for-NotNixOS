{ stdenv, fetchurl }:

let
  version = "0.25.0"; # バージョンを変数として定義
in
stdenv.mkDerivation {
  pname = "dfx";
  inherit  version; # バージョンを継承

  src = fetchurl {
    url = "https://github.com/dfinity/sdk/releases/tag/${version}/dfx-${version}-linux.tar.gz";
    sha256 = ""; # SHA-256 ハッシュ
  };

  buildInputs = [ ];

  meta = {
    description = "The DFINITY Canister SDK";
    homepage = "https://internetcomputer.org";
    license = stdenv.lib.licenses.mit;
  };
}
