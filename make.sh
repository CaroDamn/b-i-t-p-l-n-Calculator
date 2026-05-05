#!/bin/bash

# Tạo cấu trúc cho BTL1
mkdir -p BTL1_Entity/include BTL1_Entity/src
touch BTL1_Entity/main.cpp

# Tạo file cho AccuracyFloat trong BTL1
cat <<EOF > BTL1_Entity/include/AccuracyFloat.h
#ifndef ACCURACY_FLOAT_H
#define ACCURACY_FLOAT_H

#include <string>
#include <iostream>

class AccuracyFloat {
private:
    int integerPart;
    long long decimalPart;
    long long precisePart;
    bool isNegative;

public:
    AccuracyFloat();
    AccuracyFloat(int intPart, long long decPart, long long precise, bool sign);
    AccuracyFloat(std::string input);

    // Overloading operators
    AccuracyFloat operator+(const AccuracyFloat& other);
    AccuracyFloat operator-(const AccuracyFloat& other);
    // ... Thêm các toán tử khác ở đây

    std::string toString() const;
};

#endif
EOF

cat <<EOF > BTL1_Entity/src/AccuracyFloat.cpp
#include "../include/AccuracyFloat.h"

AccuracyFloat::AccuracyFloat() : integerPart(0), decimalPart(0), precisePart(0), isNegative(false) {}
// Triển khai các hàm khác...
EOF

# Tạo file cho Fraction trong BTL1
cat <<EOF > BTL1_Entity/include/Fraction.h
#ifndef FRACTION_H
#define FRACTION_H

#include <string>

class Fraction {
private:
    long long numerator;
    long long denominator;
    bool isNegative;

public:
    Fraction(long long num = 0, long long den = 1, bool sign = false);
    void simplify();
    // Overloading operators...
};

#endif
EOF

touch BTL1_Entity/src/Fraction.cpp

# --- Tạo cấu trúc cho BTL2 ---
mkdir -p BTL2_System/include BTL2_System/src
touch BTL2_System/main.cpp

# Tạo lớp trừu tượng Num.h
cat <<EOF > BTL2_System/include/Num.h
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
EOF

# Tạo Calculator
touch BTL2_System/include/Calculator.h BTL2_System/src/Calculator.cpp

echo "Đã khởi tạo xong cấu trúc project cho BTL1 và BTL2!"