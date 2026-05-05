# BTL1: Numerical Entities - Precise Calculation

Dự án này tập trung vào việc xây dựng các thực thể số học tùy chỉnh nhằm giải quyết triệt để vấn đề sai số làm tròn của các kiểu dữ liệu `float` và `double` trong C++.

## 1. Class Fraction (Phân số)
Được thiết kế để đảm bảo tính chính xác tuyệt đối cho các số hữu tỉ và các phép tính có kết quả là số thập phân vô hạn tuần hoàn.

### Cấu trúc dữ liệu
- **numerator** (`long long`): Tử số (lưu trị tuyệt đối).
- **denominator** (`long long`): Mẫu số (luôn dương và khác 0).
- **isNegative** (`bool`): Quản lý dấu của phân số.

### Chức năng chính
- **simplify()**: Tối giản phân số bằng thuật toán tìm GCD (Ước chung lớn nhất).
- **toString()**: Trả về chuỗi định dạng `a/b` hoặc `-a/b`.
- **Operator Overloading**: Hỗ trợ đầy đủ các phép tính số học (+, -, *, /) và các phép so sánh (==, !=, <, >, <=, >=).

---

## 2. Class AccuracyFloat (Số thực chính xác)
Xử lý các số thập phân hữu hạn bằng cách tách biệt phần nguyên và phần thập phân, tránh việc làm tròn sai lệch của máy tính.

### Cấu trúc dữ liệu
- **integerPart** (`int`): Phần số nguyên.
- **decimalPart** (`long long`): Phần thập phân (lưu dưới dạng số nguyên lớn).
- **precisePart** (`long long`): Số lượng chữ số sau dấu phẩy (ví dụ: $0.005$ tương ứng với `precisePart = 3`).
- **isNegative** (`bool`): Quản lý dấu âm/dương.

### Chức năng chính
- **normalize()**: Tự động chuẩn hóa và xử lý phần dư/mượn giữa phần thập phân và phần nguyên.
- **Operator Overloading**: Thực hiện tính toán trực tiếp trên các thành phần số nguyên, đảm bảo kết quả như tính toán trên giấy.

---

## 3. Cấu trúc thư mục
```text
BTL1_Entity/
├── include/
│   ├── AccuracyFloat.h
│   └── Fraction.h
├── src/
│   ├── AccuracyFloat.cpp
│   └── Fraction.cpp
├── Makefile
└── main.cpp