vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/WANDOKING/MyPackage
    REF 4d840b250c187226f94924929341f2edfd172cf6
)
 
vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}/MyPackage/HelloPrinter"
)
 
vcpkg_cmake_build()
vcpkg_cmake_install()
 
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")