/*!
* Created by Molybdenum on 8/14/21.
*
*/


#include "Basic/Version.h"
#include "Basic/test.hpp"
#include <iostream>


int main(int argc, const char * argv[]) {
    // main entry here
    using std::cout, std::endl;

    cout << GetBasicVersionString() << endl;

    cout << add(1, 2) << endl;

    return 0;
}
