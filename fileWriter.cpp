#include "fileWriter.h"
#include <fstream>
#include <string>

int writeFile (char textStr[], std::string filePath) {
	std::ofstream myfile(filePath, std::ios::binary);
	myfile.write((char *) &textStr, sizeof(&textStr));
	return 0;
}

std::string readFile (std::string filePath) {
	return "cowabunga";
}

int main () {
	char copyMe[] = "There is no cow level ajsdkfjaskdfjksdajfksadjfkasdjfksadjfksdajkfasdjkfsadjkfjasdkfjdsakfjsdkafjsdakfjdueueueueu";
	writeFile(copyMe, "./cows.test");
	return 0;
}
