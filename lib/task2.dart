// Метод для преобразования целого числа из десятичной системы в двоичную
String decimalToBinary(int decimal) {
  String binary = '';

  while (decimal > 0) {
    binary = '${decimal % 2}$binary';
    decimal ~/= 2;
  }

  return binary;
}

// Метод для преобразования целого числа из двоичной системы в десятичную
int binaryToDecimal(String binary) {
  int decimal = 0;
  int base = 1;
  int length = binary.length;

  for (int i = length - 1; i >= 0; i--) {
    if (binary[i] == '1') {
      decimal += base;
    }
    base *= 2;
  }

  return decimal;
}
