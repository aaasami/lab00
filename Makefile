# Makefile for lab00, Shuang Li, CS32, F24

CXX=clang++
# CXX=g++

helloWorld: helloWorld.o
	${CXX} helloWorld.o -o helloWorld

helloWorld.o: helloWorld.cpp
	${CXX} -c helloWorld.cpp

lab00Test: lab00Test.o tddFuncs.o arrayFuncs.o
	${CXX} lab00Test.o tddFuncs.o arrayFuncs.o -o lab00Test

lab00Test.o: lab00Test.cpp
	${CXX} -c lab00Test.cpp

clean:
	/bin/rm -f *.o helloWorld lab00Test