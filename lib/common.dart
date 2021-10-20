// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:math' as math;

final _random = math.Random();

final double degree = math.pi / 180;

class GlMatrix {
  GlMatrix._();

  static const double EPSILON = 0.000001;
  static String ANGLE_ORDER = "xyz";

  static double random() => _random.nextDouble();

  double toRadian(double a) {
    return a * degree;
  }

  bool equals(double a, double b) {
    return (a - b).abs() <= EPSILON * math.max(1.0, math.max(a.abs(), b.abs()));
  }
}

double hypot(List<dynamic> arguments) {
  double y = 0;
  int i = arguments.length;
  while (i-- > 0) {
    y += arguments[i] * arguments[i];
  }
  return math.sqrt(y);
}
