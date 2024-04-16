pushd $VCPKG_INSTALLATION_ROOT
git checkout master
git restore .
git pull
popd

brew install autoconf automake pkg-config

cmake \
    -S . \
    -B ./build_out/cmake/osx-x64 \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_TOOLCHAIN_FILE=$VCPKG_INSTALLATION_ROOT/scripts/buildsystems/vcpkg.cmake \
    -DVCPKG_TARGET_TRIPLET=x64-osx

cmake --build ./build_out/cmake/osx-x64
