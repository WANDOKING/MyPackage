#include "HelloPrinter.h"

#include <iostream>

void HelloPrinter::ShowVersion()
{
    std::cout << "HelloPrinter Version 1.0.1" << std::endl;
    std::cout << "This is a simple example of a C++ class that prints a message." << std::endl;
}

void HelloPrinter::PrintHello()
{
    std::cout << "Hello, World!" << std::endl;
}
