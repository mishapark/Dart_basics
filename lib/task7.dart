extension NthRootExtension on num {
  num nthRoot(int n) {
    if (this < 0 && n % 2 == 0) {
      throw ArgumentError(
          'Отрицательное число не может быть возведено в чётную степень');
    }
    final double epsilon = 0.01;
    double x = abs().toDouble();
    double root = 1.0;

    while ((root - x / root).abs() > epsilon) {
      root = ((n - 1) * root + x / _pow(root, n - 1)) / n;
    }

    return this < 0 ? -root : root;
  }

  double _pow(double base, int exponent) {
    double result = 1.0;
    for (int i = 0; i < exponent; i++) {
      result *= base;
    }
    return result;
  }
}
