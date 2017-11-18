CXX = clang++
CXXFLAGS = -std=c++11
MAIN = fileWriter.cpp
EXE = run.o
TESTDIR = test/
TESTFILE = tests.cpp
TESTRESULT = test.result

make: test build

build:
	$(CXX) $(CXXFLAGS) $(MAIN) -o $(EXE)

buildTest:
	$(CXX) $(TESTDIR)$(TESTFILE) -o $(TESTDIR)$(TESTRESULT)

runTest:
	./$(TESTDIR)$(TESTRESULT)

test: buildTest runTest

