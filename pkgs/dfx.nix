{ stdenv, fetchurl }:

stdenv.mkDerivation {
  pname = "dfx";
  version = "0.25.0";

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
