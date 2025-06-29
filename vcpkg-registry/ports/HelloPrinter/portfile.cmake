vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/WANDOKING/HelloPrinter
    REF 8ca68fbeecaf8068a2d03495348fb9dd7b4b90cf
)
 
vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}/MyPrinter/MyCompressor"
)
 
vcpkg_cmake_build()
vcpkg_cmake_install()
 
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")