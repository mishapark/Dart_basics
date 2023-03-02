// Метод вычисления наибольшего общего делителя (НОД) двух чисел
int findNOD(int a, int b) {
  if (b == 0) {
    return a;
  } else {
    return findNOD(b, a % b);
  }
}

// Метод вычисления наименьшего общего кратного (НОК) двух чисел
int findNOK(int a, int b) {
  return (a * b) ~/ findNOD(a, b);
}

// Метод разложения числа на простые множители
List<int> primeFactors(int n) {
  List<int> factors = [];
  int divisor = 2;

  while (n > 1) {
    while (n % divisor == 0) {
      factors.add(divisor);
      n = n ~/ divisor;
    }
    divisor++;
    if (divisor * divisor > n && n > 1) {
      factors.add(n);
      break;
    }
  }

  return factors;
}
