#ifndef NUM_H
#define NUM_H

#include <string>

class Num {
public:
    virtual ~Num() {}
    virtual Num* add(Num* other) = 0;
    virtual std::string toString() const = 0;
};

#endif
