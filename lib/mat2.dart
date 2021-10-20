import 'dart:math' as math;
import 'common.dart';

/// 2x2 Matrix
/// @module mat2

/// Creates a new identity mat2
///
/// @returns {mat2} a new 2x2 matrix
List<double> create() {
  List<double> out = [];
  out[1] = 0;
  out[2] = 0;
  out[0] = 1;
  out[3] = 1;
  return out;
}

/// Creates a new mat2 initialized with values from an existing matrix
///
/// @param {ReadonlyMat2} a matrix to clone
/// @returns {mat2} a new 2x2 matrix
List<double> clone(List<double> a) {
  List<double> out = [];
  out[0] = a[0];
  out[1] = a[1];
  out[2] = a[2];
  out[3] = a[3];
  return out;
}

/// Copy the values from one mat2 to another
///
/// @param {mat2} out the receiving matrix
/// @param {ReadonlyMat2} a the source matrix
/// @returns {mat2} out
List<double> copy(List<double> out, List<double> a) {
  out[0] = a[0];
  out[1] = a[1];
  out[2] = a[2];
  out[3] = a[3];
  return out;
}

/// Set a mat2 to the identity matrix
///
/// @param {mat2} out the receiving matrix
/// @returns {mat2} out
List<double> identity(List<double> out) {
  out[0] = 1;
  out[1] = 0;
  out[2] = 0;
  out[3] = 1;
  return out;
}

/// Create a new mat2 with the given values
///
/// @param {Number} m00 Component in column 0, row 0 position (index 0)
/// @param {Number} m01 Component in column 0, row 1 position (index 1)
/// @param {Number} m10 Component in column 1, row 0 position (index 2)
/// @param {Number} m11 Component in column 1, row 1 position (index 3)
/// @returns {mat2} out A new 2x2 matrix
List<double> fromValues(double m00, double m01, double m10, double m11) {
  List<double> out = [];
  out[0] = m00;
  out[1] = m01;
  out[2] = m10;
  out[3] = m11;
  return out;
}

/// Set the components of a mat2 to the given values
///
/// @param {mat2} out the receiving matrix
/// @param {Number} m00 Component in column 0, row 0 position (index 0)
/// @param {Number} m01 Component in column 0, row 1 position (index 1)
/// @param {Number} m10 Component in column 1, row 0 position (index 2)
/// @param {Number} m11 Component in column 1, row 1 position (index 3)
/// @returns {mat2} out
List<double> set(List<double> out, double m00, double m01, double m10, double m11) {
  out[0] = m00;
  out[1] = m01;
  out[2] = m10;
  out[3] = m11;
  return out;
}

/// Transpose the values of a mat2
///
/// @param {mat2} out the receiving matrix
/// @param {ReadonlyMat2} a the source matrix
/// @returns {mat2} out
List<double> transpose(List<double> out, List<double> a) {
  // If we are transposing ourselves we can skip a few steps but have to cache
  // some values
  if (out == a) {
    double a1 = a[1];
    out[1] = a[2];
    out[2] = a1;
  } else {
    out[0] = a[0];
    out[1] = a[2];
    out[2] = a[1];
    out[3] = a[3];
  }

  return out;
}

/// Inverts a mat2
///
/// @param {mat2} out the receiving matrix
/// @param {ReadonlyMat2} a the source matrix
/// @returns {mat2} out
List<double>? invert(List<double> out, List<double> a) {
  double a0 = a[0], a1 = a[1], a2 = a[2], a3 = a[3];

  // Calculate the determinant
  double det = a0 * a3 - a2 * a1;

  if (det == 0) {
    return null;
  }
  det = 1.0 / det;

  out[0] = a3 * det;
  out[1] = -a1 * det;
  out[2] = -a2 * det;
  out[3] = a0 * det;

  return out;
}

/// Calculates the adjugate of a mat2
///
/// @param {mat2} out the receiving matrix
/// @param {ReadonlyMat2} a the source matrix
/// @returns {mat2} out
adjoint(List<double> out, List<double> a) {
  // Caching this value is necessary if out == a
  final a0 = a[0];
  out[0] = a[3];
  out[1] = -a[1];
  out[2] = -a[2];
  out[3] = a0;

  return out;
}

/// Calculates the determinant of a mat2
///
/// @param {ReadonlyMat2} a the source matrix
/// @returns {Number} determinant of a
double determinant(List<double> a) {
  return a[0] * a[3] - a[2] * a[1];
}

/// Multiplies two mat2's
///
/// @param {mat2} out the receiving matrix
/// @param {ReadonlyMat2} a the first operand
/// @param {ReadonlyMat2} b the second operand
/// @returns {mat2} out
List<double> multiply(List<double> out, List<double> a, List<double> b) {
  final a0 = a[0], a1 = a[1], a2 = a[2], a3 = a[3];
  final b0 = b[0], b1 = b[1], b2 = b[2], b3 = b[3];
  out[0] = a0 * b0 + a2 * b1;
  out[1] = a1 * b0 + a3 * b1;
  out[2] = a0 * b2 + a2 * b3;
  out[3] = a1 * b2 + a3 * b3;
  return out;
}

/// Rotates a mat2 by the given angle
///
/// @param {mat2} out the receiving matrix
/// @param {ReadonlyMat2} a the matrix to rotate
/// @param {Number} rad the angle to rotate the matrix by
/// @returns {mat2} out
List<double> rotate(List<double> out, List<double> a, double rad) {
  final a0 = a[0], a1 = a[1], a2 = a[2], a3 = a[3];
  final s = math.sin(rad);
  final c = math.cos(rad);
  out[0] = a0 * c + a2 * s;
  out[1] = a1 * c + a3 * s;
  out[2] = a0 * -s + a2 * c;
  out[3] = a1 * -s + a3 * c;
  return out;
}

/// Scales the mat2 by the dimensions in the given vec2
///
/// @param {mat2} out the receiving matrix
/// @param {ReadonlyMat2} a the matrix to rotate
/// @param {ReadonlyVec2} v the vec2 to scale the matrix by
/// @returns {mat2} out
///*/
scale(List<double> out, List<double> a, List<double> v) {
  final a0 = a[0], a1 = a[1], a2 = a[2], a3 = a[3];
  final v0 = v[0], v1 = v[1];
  out[0] = a0 * v0;
  out[1] = a1 * v0;
  out[2] = a2 * v1;
  out[3] = a3 * v1;
  return out;
}

/// Creates a matrix from a given angle
/// This is equivalent to (but much faster than):
///
///     mat2.identity(dest);
///     mat2.rotate(dest, dest, rad);
///
/// @param {mat2} out mat2 receiving operation result
/// @param {Number} rad the angle to rotate the matrix by
/// @returns {mat2} out
fromRotation(List<double> out, double rad) {
  final s = math.sin(rad);
  final c = math.cos(rad);
  out[0] = c;
  out[1] = s;
  out[2] = -s;
  out[3] = c;
  return out;
}

/// Creates a matrix from a vector scaling
/// This is equivalent to (but much faster than):
///
///     mat2.identity(dest);
///     mat2.scale(dest, dest, vec);
///
/// @param {mat2} out mat2 receiving operation result
/// @param {ReadonlyVec2} v Scaling vector
/// @returns {mat2} out
fromScaling(List<double> out, List<double> v) {
  out[0] = v[0];
  out[1] = 0;
  out[2] = 0;
  out[3] = v[1];
  return out;
}

/// Returns a string representation of a mat2
///
/// @param {ReadonlyMat2} a matrix to represent as a string
/// @returns {String} string representation of the matrix
String str(List<double> a) {
  return """mat2("${a[0]}", "${a[1]}", "${a[2]}", "${a[3]}")""";
}

/// Returns Frobenius norm of a mat2
///
/// @param {ReadonlyMat2} a the matrix to calculate Frobenius norm of
/// @returns {Number} Frobenius norm
double frob(List<double> a) {
  return hypot([a[0], a[1], a[2], a[3]]);
}

/// Returns L, D and U matrices (Lower triangular, Diagonal and Upper triangular) by factorizing the input matrix
/// @param {ReadonlyMat2} L the lower triangular matrix
/// @param {ReadonlyMat2} D the diagonal matrix
/// @param {ReadonlyMat2} U the upper triangular matrix
/// @param {ReadonlyMat2} a the input matrix to factorize

// ignore: non_constant_identifier_names
List<List<double>> LDU(List<double> L, List<double> D, List<double> U, List<double> a) {
  L[2] = a[2] / a[0];
  U[0] = a[0];
  U[1] = a[1];
  U[3] = a[3] - L[2] * U[1];
  return [L, D, U];
}

/// Adds two mat2's
///
/// @param {mat2} out the receiving matrix
/// @param {ReadonlyMat2} a the first operand
/// @param {ReadonlyMat2} b the second operand
/// @returns {mat2} out
List<double> add(List<double> out, List<double> a, List<double> b) {
  out[0] = a[0] + b[0];
  out[1] = a[1] + b[1];
  out[2] = a[2] + b[2];
  out[3] = a[3] + b[3];
  return out;
}

/// Subtracts matrix b from matrix a
///
/// @param {mat2} out the receiving matrix
/// @param {ReadonlyMat2} a the first operand
/// @param {ReadonlyMat2} b the second operand
/// @returns {mat2} out
List<double> subtract(List<double> out, List<double> a, List<double> b) {
  out[0] = a[0] - b[0];
  out[1] = a[1] - b[1];
  out[2] = a[2] - b[2];
  out[3] = a[3] - b[3];
  return out;
}

/// Returns whether or not the matrices have exactly the same elements in the same position (when compared with ===)
///
/// @param {ReadonlyMat2} a The first matrix.
/// @param {ReadonlyMat2} b The second matrix.
/// @returns {Boolean} True if the matrices are equal, false otherwise.
bool exactEquals(List<double> a, List<double> b) {
  return a[0] == b[0] && a[1] == b[1] && a[2] == b[2] && a[3] == b[3];
}

/// Returns whether or not the matrices have approximately the same elements in the same position.
///
/// @param {ReadonlyMat2} a The first matrix.
/// @param {ReadonlyMat2} b The second matrix.
/// @returns {Boolean} True if the matrices are equal, false otherwise.
bool equals(List<double> a, List<double> b) {
  final a0 = a[0], a1 = a[1], a2 = a[2], a3 = a[3];
  final b0 = b[0], b1 = b[1], b2 = b[2], b3 = b[3];
  return ((a0 - b0).abs() <= GlMatrix.EPSILON * math.max(1.0, math.max((a0).abs(), (b0).abs())) &&
      (a1 - b1).abs() <= GlMatrix.EPSILON * math.max(1.0, math.max((a1).abs(), (b1).abs())) &&
      (a2 - b2).abs() <= GlMatrix.EPSILON * math.max(1.0, math.max((a2).abs(), (b2).abs())) &&
      (a3 - b3).abs() <= GlMatrix.EPSILON * math.max(1.0, math.max((a3).abs(), (b3).abs())));
}

/// Multiply each element of the matrix by a scalar.
///
/// @param {mat2} out the receiving matrix
/// @param {ReadonlyMat2} a the matrix to scale
/// @param {Number} b amount to scale the matrix's elements by
/// @returns {mat2} out
List<double> multiplyScalar(List<double> out, List<double> a, double b) {
  out[0] = a[0] * b;
  out[1] = a[1] * b;
  out[2] = a[2] * b;
  out[3] = a[3] * b;
  return out;
}

/// Adds two mat2's after multiplying each element of the second operand by a scalar value.
///
/// @param {mat2} out the receiving vector
/// @param {ReadonlyMat2} a the first operand
/// @param {ReadonlyMat2} b the second operand
/// @param {Number} scale the amount to scale b's elements by before adding
/// @returns {mat2} out
List<double> multiplyScalarAndAdd(List<double> out, List<double> a, List<double> b, double scale) {
  out[0] = a[0] + b[0] * scale;
  out[1] = a[1] + b[1] * scale;
  out[2] = a[2] + b[2] * scale;
  out[3] = a[3] + b[3] * scale;
  return out;
}

/// Alias for {@link mat2.multiply}
/// @function
const mul = multiply;

/// Alias for {@link mat2.subtract}
/// @function
const sub = subtract;
