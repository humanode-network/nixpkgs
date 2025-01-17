{ lib
, stdenv
, fetchFromGitHub
, cmake
}:

stdenv.mkDerivation rec {
  pname = "opencl-headers";
  version = "2023.02.06";

  src = fetchFromGitHub {
    owner = "KhronosGroup";
    repo = "OpenCL-Headers";
    rev = "v${version}";
    sha256 = "sha256-BJDaDokyHgmyl+bGqCwG1J7iOvu0E3P3iYZ1/krot8s=";
  };

  nativeBuildInputs = [ cmake ];

  meta = with lib; {
    description = "Khronos OpenCL headers version ${version}";
    homepage = "https://www.khronos.org/registry/cl/";
    license = licenses.asl20;
    platforms = platforms.unix;
  };
}
