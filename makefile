CPP      = g++.exe -D__RELEASE__
INCS     = -I"E:/cpp_projects/BGPL"
FLAG     = $(INCS) -std=c++11 -g3
objects  = ErrorPrinter.o TypeChecker.o Memory.o VirtualMachine.o main.o

BGPL : $(objects)
	$(CPP) -o build/BGPL $(objects)

ErrorPrinter.o : VirtualMachine/ErrorPrinter.cpp
	$(CPP) -c VirtualMachine/ErrorPrinter.cpp VirtualMachine/ErrorPrinter.h $(FLAG)
	
TypeChecker.o : VirtualMachine/TypeChecker.cpp
	$(CPP) -c VirtualMachine/TypeChecker.cpp VirtualMachine/TypeChecker.h VirtualMachine/StrFunction.h $(FLAG)
	
Memory.o : VirtualMachine/Memory.cpp
	$(CPP) -c VirtualMachine/Memory.cpp VirtualMachine/Memory.h VirtualMachine/Variable.h VirtualMachine/ErrorPrinter.h VirtualMachine/TypeChecker.h $(FLAG)

VirtualMachine.o : VirtualMachine/VirtualMachine.cpp
	$(CPP) -c VirtualMachine/VirtualMachine.cpp VirtualMachine/VirtualMachine.h VirtualMachine/ErrorPrinter.h VirtualMachine/TypeChecker.h VirtualMachine/Function.h VirtualMachine/Module.h VirtualMachine/StrFunction.h $(FLAG)
	
main.o : main.cpp
	$(CPP) -c main.cpp VirtualMachine/VirtualMachine.h $(FLAG)
	
	