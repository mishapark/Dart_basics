// Метод для преобразования целого числа из десятичной системы в двоичную
String decimalToBinary(int decimal) {
  List<int> binaryList = [];
  bool isNegative = decimal < 0;
  decimal = isNegative ? -decimal : decimal;

  if (decimal == 0) {
    return '0';
  }
  while (decimal > 0) {
    binaryList.add(decimal % 2);
    decimal = decimal ~/ 2;
  }
  String binaryString = binaryList.reversed.join();
  return isNegative ? '-$binaryString' : binaryString;
}

// Метод для преобразования целого числа из двоичной системы в десятичную
int binaryToDecimal(String binary) {
  bool isNegative = false;
  int decimal = 0;
  int base = 1;

  if (binary[0] == '-') {
    isNegative = true;
    binary = binary.substring(1);
  }

  for (int i = binary.length - 1; i >= 0; i--) {
    if (binary[i] == '1') {
      decimal += base;
    }
    base *= 2;
  }

  return isNegative ? -decimal : decimal;
}
