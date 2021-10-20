import 'dart:math' as math;
import 'package:gl_matrix_dart/common.dart';

/**
 * 2 Dimensional Vector
 * @module vec2
 */

/// Creates a new, empty vec2
///
/// @returns {vec2} a new 2D vector
List<double> create() {
  final out = <double>[];
  out[0] = 0;
  out[1] = 0;
  return out;
}

/// Creates a new vec2 initialized with values from an existing vector
///
/// @param {ReadonlyVec2} a vector to clone
/// @returns {vec2} a new 2D vector
List<double> clone(a) {
  final out = <double>[];
  out[0] = a[0];
  out[1] = a[1];
  return out;
}

/// Creates a new vec2 initialized with the given values
///
/// @param {Number} x X component
/// @param {Number} y Y component
/// @returns {vec2} a new 2D vector
List<double> fromValues(double x, double y) {
  final out = <double>[];
  out[0] = x;
  out[1] = y;
  return out;
}

/// Copy the values from one vec2 to another
///
/// @param {vec2} out the receiving vector
/// @param {ReadonlyVec2} a the source vector
/// @returns {vec2} out
List<double> copy(List<double> out, List<double> a) {
  out[0] = a[0];
  out[1] = a[1];
  return out;
}

/// Set the components of a vec2 to the given values
///
/// @param {vec2} out the receiving vector
/// @param {Number} x X component
/// @param {Number} y Y component
/// @returns {vec2} out
List<double> set(List<double> out, double x, double y) {
  out[0] = x;
  out[1] = y;
  return out;
}

/// Adds two vec2's
///
/// @param {vec2} out the receiving vector
/// @param {ReadonlyVec2} a the first operand
/// @param {ReadonlyVec2} b the second operand
/// @returns {vec2} out
List<double> add(List<double> out, List<double> a, List<double> b) {
  out[0] = a[0] + b[0];
  out[1] = a[1] + b[1];
  return out;
}

/// Subtracts vector b from vector a
///
/// @param {vec2} out the receiving vector
/// @param {ReadonlyVec2} a the first operand
/// @param {ReadonlyVec2} b the second operand
/// @returns {vec2} out
List<double> subtract(List<double> out, List<double> a, List<double> b) {
  out[0] = a[0] - b[0];
  out[1] = a[1] - b[1];
  return out;
}

/// Multiplies two vec2's
///
/// @param {vec2} out the receiving vector
/// @param {ReadonlyVec2} a the first operand
/// @param {ReadonlyVec2} b the second operand
/// @returns {vec2} out
List<double> multiply(List<double> out, List<double> a, List<double> b) {
  out[0] = a[0] * b[0];
  out[1] = a[1] * b[1];
  return out;
}

/// Divides two vec2's
///
/// @param {vec2} out the receiving vector
/// @param {ReadonlyVec2} a the first operand
/// @param {ReadonlyVec2} b the second operand
/// @returns {vec2} out
List<double> divide(List<double> out, List<double> a, List<double> b) {
  out[0] = a[0] / b[0];
  out[1] = a[1] / b[1];
  return out;
}

/// math.ceil the components of a vec2
///
/// @param {vec2} out the receiving vector
/// @param {ReadonlyVec2} a vector to ceil
/// @returns {vec2} out
List<double> ceil(List<double> out, List<double> a) {
  out[0] = a[0].ceilToDouble();
  out[1] = a[1].ceilToDouble();
  return out;
}

/// math.floor the components of a vec2
///
/// @param {vec2} out the receiving vector
/// @param {ReadonlyVec2} a vector to floor
/// @returns {vec2} out
List<double> floor(List<double> out, List<double> a) {
  out[0] = a[0].floorToDouble();
  out[1] = a[1].floorToDouble();
  return out;
}

/// Returns the minimum of two vec2's
///
/// @param {vec2} out the receiving vector
/// @param {ReadonlyVec2} a the first operand
/// @param {ReadonlyVec2} b the second operand
/// @returns {vec2} out
List<double> min(List<double> out, List<double> a, List<double> b) {
  out[0] = math.min(a[0], b[0]);
  out[1] = math.min(a[1], b[1]);
  return out;
}

/// Returns the maximum of two vec2's
///
/// @param {vec2} out the receiving vector
/// @param {ReadonlyVec2} a the first operand
/// @param {ReadonlyVec2} b the second operand
/// @returns {vec2} out
List<double> max(List<double> out, List<double> a, List<double> b) {
  out[0] = math.max(a[0], b[0]);
  out[1] = math.max(a[1], b[1]);
  return out;
}

/// math.round the components of a vec2
///
/// @param {vec2} out the receiving vector
/// @param {ReadonlyVec2} a vector to round
/// @returns {vec2} out
List<double> round(List<double> out, List<double> a) {
  out[0] = a[0].roundToDouble();
  out[1] = a[1].roundToDouble();
  return out;
}

/// Scales a vec2 by a scalar number
///
/// @param {vec2} out the receiving vector
/// @param {ReadonlyVec2} a the vector to scale
/// @param {Number} b amount to scale the vector by
/// @returns {vec2} out
List<double> scale(List<double> out, List<double> a, double b) {
  out[0] = a[0] * b;
  out[1] = a[1] * b;
  return out;
}

/// Adds two vec2's after scaling the second operand by a scalar value
///
/// @param {vec2} out the receiving vector
/// @param {ReadonlyVec2} a the first operand
/// @param {ReadonlyVec2} b the second operand
/// @param {Number} scale the amount to scale b by before adding
/// @returns {vec2} out
List<double> scaleAndAdd(List<double> out, List<double> a, List<double> b, double scale) {
  out[0] = a[0] + b[0] * scale;
  out[1] = a[1] + b[1] * scale;
  return out;
}

/// Calculates the euclidian distance between two vec2's
///
/// @param {ReadonlyVec2} a the first operand
/// @param {ReadonlyVec2} b the second operand
/// @returns {Number} distance between a and b
double distance(List<double> a, List<double> b) {
  var x = b[0] - a[0], y = b[1] - a[1];
  return hypot([x, y]);
}

/// Calculates the squared euclidian distance between two vec2's
///
/// @param {ReadonlyVec2} a the first operand
/// @param {ReadonlyVec2} b the second operand
/// @returns {Number} squared distance between a and b
List<double> squaredDistance(a, b) {
  var x = b[0] - a[0], y = b[1] - a[1];
  return x * x + y * y;
}

/// Calculates the length of a vec2
///
/// @param {ReadonlyVec2} a vector to calculate length of
/// @returns {Number} length of a
double length(List<double> a) {
  final x = a[0], y = a[1];
  return hypot([x, y]);
}

/// Calculates the squared length of a vec2
///
/// @param {ReadonlyVec2} a vector to calculate squared length of
/// @returns {Number} squared length of a
List<double> squaredLength(a) {
  var x = a[0], y = a[1];
  return x * x + y * y;
}

/// Negates the components of a vec2
///
/// @param {vec2} out the receiving vector
/// @param {ReadonlyVec2} a vector to negate
/// @returns {vec2} out
List<double> negate(out, a) {
  out[0] = -a[0];
  out[1] = -a[1];
  return out;
}

/// Returns the inverse of the components of a vec2
///
/// @param {vec2} out the receiving vector
/// @param {ReadonlyVec2} a vector to invert
/// @returns {vec2} out
List<double> inverse(out, a) {
  out[0] = 1.0 / a[0];
  out[1] = 1.0 / a[1];
  return out;
}

/// Normalize a vec2
///
/// @param {vec2} out the receiving vector
/// @param {ReadonlyVec2} a vector to normalize
/// @returns {vec2} out
List<double> normalize(out, a) {
  var x = a[0], y = a[1];
  var len = x * x + y * y;
  if (len > 0) {
    // TODO: evaluate use of glm_invsqrt here?
    len = 1 / math.sqrt(len);
  }
  out[0] = a[0] * len;
  out[1] = a[1] * len;
  return out;
}

/// Calculates the dot product of two vec2's
///
/// @param {ReadonlyVec2} a the first operand
/// @param {ReadonlyVec2} b the second operand
/// @returns {Number} dot product of a and b
List<double> dot(a, b) {
  return a[0] * b[0] + a[1] * b[1];
}

/// Computes the cross product of two vec2's
/// Note that the cross product must by definition produce a 3D vector
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec2} a the first operand
/// @param {ReadonlyVec2} b the second operand
/// @returns {vec3} out
List<double> cross(out, a, b) {
  var z = a[0] * b[1] - a[1] * b[0];
  out[0] = out[1] = 0;
  out[2] = z;
  return out;
}

/// Performs a linear interpolation between two vec2's
///
/// @param {vec2} out the receiving vector
/// @param {ReadonlyVec2} a the first operand
/// @param {ReadonlyVec2} b the second operand
/// @param {Number} t interpolation amount, in the range [0-1], between the two inputs
/// @returns {vec2} out
List<double> lerp(out, a, b, t) {
  var ax = a[0], ay = a[1];
  out[0] = ax + t * (b[0] - ax);
  out[1] = ay + t * (b[1] - ay);
  return out;
}

/// Generates a random vector with the given scale
///
/// @param {vec2} out the receiving vector
/// @param {Number} [scale] Length of the resulting vector. If omitted, a unit vector will be returned
/// @returns {vec2} out
List<double> random(List<double> out, double? scale) {
  scale ??= 1.0;
  double r = GlMatrix.random() * 2.0 * math.pi;
  out[0] = math.cos(r) * scale;
  out[1] = math.sin(r) * scale;
  return out;
}

/// Transforms the vec2 with a mat2
///
/// @param {vec2} out the receiving vector
/// @param {ReadonlyVec2} a the vector to transform
/// @param {ReadonlyMat2} m matrix to transform with
/// @returns {vec2} out
List<double> transformMat2(List<double> out, List<double> a, List<double> m) {
  var x = a[0], y = a[1];
  out[0] = m[0] * x + m[2] * y;
  out[1] = m[1] * x + m[3] * y;
  return out;
}

/// Transforms the vec2 with a mat2d
///
/// @param {vec2} out the receiving vector
/// @param {ReadonlyVec2} a the vector to transform
/// @param {ReadonlyMat2d} m matrix to transform with
/// @returns {vec2} out
List<double> transformMat2d(List<double> out, List<double> a, List<double> m) {
  var x = a[0], y = a[1];
  out[0] = m[0] * x + m[2] * y + m[4];
  out[1] = m[1] * x + m[3] * y + m[5];
  return out;
}

/// Transforms the vec2 with a mat3
/// 3rd vector component is implicitly '1'
///
/// @param {vec2} out the receiving vector
/// @param {ReadonlyVec2} a the vector to transform
/// @param {ReadonlyMat3} m matrix to transform with
/// @returns {vec2} out
List<double> transformMat3(List<double> out, List<double> a, List<double> m) {
  var x = a[0], y = a[1];
  out[0] = m[0] * x + m[3] * y + m[6];
  out[1] = m[1] * x + m[4] * y + m[7];
  return out;
}

/// Transforms the vec2 with a mat4
/// 3rd vector component is implicitly '0'
/// 4th vector component is implicitly '1'
///
/// @param {vec2} out the receiving vector
/// @param {ReadonlyVec2} a the vector to transform
/// @param {ReadonlyMat4} m matrix to transform with
/// @returns {vec2} out
List<double> transformMat4(List<double> out, List<double> a, List<double> m) {
  final x = a[0];
  final y = a[1];
  out[0] = m[0] * x + m[4] * y + m[12];
  out[1] = m[1] * x + m[5] * y + m[13];
  return out;
}

/// Rotate a 2D vector
/// @param {vec2} out The receiving vec2
/// @param {ReadonlyVec2} a The vec2 point to rotate
/// @param {ReadonlyVec2} b The origin of the rotation
/// @param {Number} rad The angle of rotation in radians
/// @returns {vec2} out
List<double> rotate(List<double> out, List<double> a, List<double> b, double rad) {
  //Translate point to the origin
  final p0 = a[0] - b[0], p1 = a[1] - b[1], sinC = math.sin(rad), cosC = math.cos(rad);

  //perform rotation and translate to correct position
  out[0] = p0 * cosC - p1 * sinC + b[0];
  out[1] = p0 * sinC + p1 * cosC + b[1];

  return out;
}

/// Get the angle between two 2D vectors
/// @param {ReadonlyVec2} a The first operand
/// @param {ReadonlyVec2} b The second operand
/// @returns {Number} The angle in radians
double angle(List<double> a, List<double> b) {
  final x1 = a[0],
      y1 = a[1],
      x2 = b[0],
      y2 = b[1],
      // mag is the product of the magnitudes of a and b
      mag = math.sqrt((x1 * x1 + y1 * y1) * (x2 * x2 + y2 * y2));
  // mag &&.. short circuits if mag == 0
  final cosine = mag == 0 ? 0 : (x1 * x2 + y1 * y2) / mag;
  // math.min(math.max(cosine, -1), 1) clamps the cosine between -1 and 1
  return math.acos(math.min(math.max(cosine, -1), 1));
}

/// Set the components of a vec2 to zero
///
/// @param {vec2} out the receiving vector
/// @returns {vec2} out
List<double> zero(out) {
  out[0] = 0.0;
  out[1] = 0.0;
  return out;
}

/// Returns a string representation of a vector
///
/// @param {ReadonlyVec2} a vector to represent as a string
/// @returns {String} string representation of the vector
String str(a) {
  return """vec2("${a[0]}", "${a[1]}")""";
}

/// Returns whether or not the vectors exactly have the same elements in the same position (when compared with ===)
///
/// @param {ReadonlyVec2} a The first vector.
/// @param {ReadonlyVec2} b The second vector.
/// @returns {Boolean} True if the vectors are equal, false otherwise.
bool exactEquals(a, b) {
  return a[0] == b[0] && a[1] == b[1];
}

/// Returns whether or not the vectors have approximately the same elements in the same position.
///
/// @param {ReadonlyVec2} a The first vector.
/// @param {ReadonlyVec2} b The second vector.
/// @returns {Boolean} True if the vectors are equal, false otherwise.
boolequals(a, b) {
  final a0 = a[0], a1 = a[1];
  final b0 = b[0], b1 = b[1];
  return ((a0 - b0).abs() <= GlMatrix.EPSILON * math.max(1.0, math.max(a0.abs(), b0.abs())) &&
      (a1 - b1).abs() <= GlMatrix.EPSILON * math.max(1.0, math.max(a1.abs(), b1.abs())));
}

/// Alias for {@link vec2.length}
/// @function
const len = length;

/// Alias for {@link vec2.subtract}
/// @function
const sub = subtract;

/// Alias for {@link vec2.multiply}
/// @function
const mul = multiply;

/// Alias for {@link vec2.divide}
/// @function
const div = divide;

/// Alias for {@link vec2.distance}
/// @function
const dist = distance;

/// Alias for {@link vec2.squaredDistance}
/// @function
const sqrDist = squaredDistance;

/// Alias for {@link vec2.squaredLength}
/// @function
const sqrLen = squaredLength;

/// Perform some operation over an array of vec2s.
///
/// @param {Array} a the array of vectors to iterate over
/// @param {Number} stride Number of elements between the start of each vec2. If 0 assumes tightly packed
/// @param {Number} offset Number of elements to skip at the beginning of the array
/// @param {Number} count Number of vec2s to iterate over. If 0 iterates over entire array
/// @param {Function} fn Function to call for each vector in the array
/// @param {Object} [arg] additional argument to pass to fn
/// @returns {Array} a
/// @function
final forEach = (() {
  final vec = create();

  return (List<double> a, int? stride, int? offset, int? count, fn, arg) {
    int i, l;

    stride ??= 2;

    if (offset != null) {
      offset = 0;
    }

    if (count != null) {
      l = math.min(count * stride + offset!, a.length);
    } else {
      l = a.length;
    }

    for (i = offset!; i < l; i += stride) {
      vec[0] = a[i];
      vec[1] = a[i + 1];
      fn(vec, vec, arg);
      a[i] = vec[0];
      a[i + 1] = vec[1];
    }

    return a;
  };
})();
