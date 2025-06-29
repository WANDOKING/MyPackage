vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/WANDOKING/MyPackage
    REF f7e041433fe0c844ea16bf43d68faa89e6fbb853
)
 
vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}/MyPackage/HelloPrinter"
)
 
vcpkg_cmake_build()
vcpkg_cmake_install()
 
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")