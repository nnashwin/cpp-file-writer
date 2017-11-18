CXX = clang++
CXXFLAGS = -std=c++11
MAIN = main.cpp
EXE = run.o
TESTDIR = tests/
TESTFILE = tests.cpp
TESTRESULT = test.result

make: build run

build:
	$(CXX) $(CXXFLAGS) $(MAIN) -o $(EXE)

run:
	./$(EXE)

buildTest:
	$(CXX) $(TESTDIR)$(TESTFILE) -o $(TESTDIR)$(TESTRESULT)

runTest:
	./$(TESTDIR)$(TESTRESULT)

test: buildTest runTest

