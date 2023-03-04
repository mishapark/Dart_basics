extension NthRootExtension on num {
  num nthRoot(int n) {
    if (this < 0 && n % 2 == 0) {
      throw ArgumentError(
          'Отрицательное число не может быть возведено в чётную степень');
    }
    final double epsilon = 0.0001;
    double guess = 1;

    while ((guess - this / _pow(guess, n - 1)).abs() > epsilon) {
      guess = ((n - 1) * guess + this / _pow(guess, n - 1)) / n;
    }

    return guess.round();
  }

  double _pow(double base, int exponent) {
    double result = 1.0;
    for (int i = 0; i < exponent; i++) {
      result *= base;
    }
    return result;
  }
}
