#include <iostream>
#include <windows.h>

using namespace std;

extern "C" int factorial(int input);
extern "C" bool compare(int a, int b);

#define malloc(x) HeapAlloc(GetProcessHeap(), 0, (x))
#define calloc(x, y) HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, (x)*(y))
#define free(x) HeapFree(GetProcessHeap(), 0, (x))

int main() {
    char* str = (char*)malloc(6 * sizeof(char)); // sizeof(char) is 1, sizeof(char*) is 8 
    if (str == NULL) {
        return -1;
    }

    str[0] = 'h';
    str[1] = 'e';
    str[2] = 'l';
    str[3] = 'l';
    str[4] = 'o';
    str[5] = '\0';

    cout << str << endl;
    free(str);
    cout << "->" << compare(456, 45) << "<-" << endl;


    // cout << "sizeof(char)" << sizeof(char) << endl;
    // cout << "sizeof(char*)" << sizeof(char*) << endl;



    cout << factorial(9) << endl; //9! = 362880
    cin.get();

    return 0;
}