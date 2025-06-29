cmake_minimum_required(VERSION 3.15)
project(HelloPrinter VERSION 1.0.0 LANGUAGES CXX)
 
find_package(fmt CONFIG REQUIRED)
 
# 정적 라이브러리 생성
add_library(HelloPrinter STATIC
    HelloPrinter.cpp
    HelloPrinter.h
)
 
target_link_libraries(HelloPrinter PRIVATE fmt::fmt)
 
# 설치 설정
install(TARGETS MyCompressor
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
        RUNTIME DESTINATION bin
        INCLUDES DESTINATION include)
 
install(FILES HelloPrinter.h DESTINATION include)