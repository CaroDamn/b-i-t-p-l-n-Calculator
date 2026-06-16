#ifndef NUM_H
#define NUM_H
#include "../../BTL1_Entity/include/Fraction.h"

#include <string>

class Num {
public:
    virtual ~Num() {}
    virtual Num* add(Num* other) = 0;
    virtual std::string toString() const = 0;
};
class NumF : public Num {
private:
    Fraction num;
public:
    NumF(Fraction f){
        this -> num = f;
    }
    Num* add(Num* other) {
        return this -> num + other -> num;
    }


}
#endif
