#include <iostream>
#include <string>
#include <vector>
#include <sstream>
#include <cmath>
#include "include/Fraction.h"
#include "include/AccuracyFloat.h"

using namespace std;

int main (){
    string strA ="1.5";
     
        string strB = "1.2";
        AccuracyFloat a(strA);
        AccuracyFloat b(strB);
        
 
        AccuracyFloat subRes = a + b;
        cout << a.toString();
}