vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/WANDOKING/MyPackage
    REF fd5229ff2157283a7b7adee3209132443e84d59c
)
 
vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}/MyPackage/HelloPrinter"
)
 
vcpkg_cmake_build()
vcpkg_cmake_install()
 
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")