CXX = clang++
CXXFLAGS = -std=c++11
MAIN = fileWriter.cpp
EXE = run.o
TESTDIR = test/
TESTFILE = tests.cpp
TESTRESULT = test.result

make: build buildTest runTest run

build:
	$(CXX) $(CXXFLAGS) $(MAIN) -o $(EXE)

run:
	./$(EXE)

buildTest:
	$(CXX) $(TESTDIR)$(TESTFILE) -o $(TESTDIR)$(TESTRESULT)

runTest:
	./$(TESTDIR)$(TESTRESULT)

test: buildTest runTest

