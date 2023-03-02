import 'dart:math';

class Point {
  final double x;
  final double y;
  final double z;

  Point(this.x, this.y, this.z);

  factory Point.origin() => Point(0, 0, 0);

  factory Point.unit() => Point(1, 1, 1);

  double distanceTo(Point another) {
    final dx = x - another.x;
    final dy = y - another.y;
    final dz = z - another.z;
    return sqrt(dx * dx + dy * dy + dz * dz);
  }

  static double calculateTriangleArea(Point p1, Point p2, Point p3) {
    final a = p1.distanceTo(p2);
    final b = p2.distanceTo(p3);
    final c = p3.distanceTo(p1);
    final s = (a + b + c) / 2;
    return sqrt(s * (s - a) * (s - b) * (s - c));
  }
}
