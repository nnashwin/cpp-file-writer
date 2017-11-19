#include "fileWriter.h"
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>

void writeFile (char textStr[], std::string filePath) {
	std::ofstream myfile(filePath);
	myfile << textStr;
	myfile.close();
}

std::string readFile (std::string filePath) {
	std::string line;
	std::string output;
	std::ifstream myfile(filePath, std::ios::binary);
	if (myfile.is_open()) {
		while (getline(myfile, line)) {
			output += line;
			output += '\n';
		}
		myfile.close();
	} else std::cout << "You are unable to open the file";

	return output;
}

int main () {
	char copyMe[] = "cookies There is no cow level ajsdkfjaskdfjksdajfksadjfkasdjfksadjfksdajkfasdjkfsadjkfjasdkfjdsakfjsdkafjsdakfjdueueueueu";
	writeFile(copyMe, "./cows.test");
	std::string fileResult = readFile("./cows.test");
	std::cout << fileResult << std::endl;
	
	return 0;
}
