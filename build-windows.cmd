pushd %VCPKG_INSTALLATION_ROOT%
git checkout master
git restore .
git pull
popd

cmake -S . -B build_out/cmake/win-x64 -A x64 -DCMAKE_TOOLCHAIN_FILE=%VCPKG_INSTALLATION_ROOT%/scripts/buildsystems/vcpkg.cmake -DVCPKG_TARGET_TRIPLET=x64-windows-static
cmake --build build_out/cmake/win-x64 --config Release
