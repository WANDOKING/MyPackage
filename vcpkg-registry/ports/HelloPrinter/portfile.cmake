vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/WANDOKING/HelloPrinter
    REF 2f944ec748bd477ea553b8aafe1edc4141452528
)
 
vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}/MyPrinter/MyCompressor"
)
 
vcpkg_cmake_build()
vcpkg_cmake_install()
 
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")