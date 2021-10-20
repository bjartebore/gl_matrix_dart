import 'dart:math' as math;
import 'package:gl_matrix_dart/common.dart';

/**
 * 3 Dimensional Vector
 * @module vec3
 */

/// Creates a new, empty vec3
///
/// @returns {vec3} a new 3D vector
List<double> create() {
  final out = <double>[];
  out[0] = 0;
  out[1] = 0;
  out[2] = 0;
  return out;
}

/// Creates a new vec3 initialized with values from an existing vector
///
/// @param {ReadonlyVec3} a vector to clone
/// @returns {vec3} a new 3D vector
List<double> clone(a) {
  var out = <double>[];
  out[0] = a[0];
  out[1] = a[1];
  out[2] = a[2];
  return out;
}

/// Calculates the length of a vec3
///
/// @param {ReadonlyVec3} a vector to calculate length of
/// @returns {Number} length of a
double length(List<double> a) {
  final x = a[0];
  final y = a[1];
  final z = a[2];
  return hypot([x, y, z]);
}

/// Creates a new vec3 initialized with the given values
///
/// @param {Number} x X component
/// @param {Number} y Y component
/// @param {Number} z Z component
/// @returns {vec3} a new 3D vector
List<double> fromValues(double x, double y, double z) {
  final out = <double>[];
  out[0] = x;
  out[1] = y;
  out[2] = z;
  return out;
}

/// Copy the values from one vec3 to another
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a the source vector
/// @returns {vec3} out
List<double> copy(List<double> out, a) {
  out[0] = a[0];
  out[1] = a[1];
  out[2] = a[2];
  return out;
}

/// Set the components of a vec3 to the given values
///
/// @param {vec3} out the receiving vector
/// @param {Number} x X component
/// @param {Number} y Y component
/// @param {Number} z Z component
/// @returns {vec3} out
List<double> set(List<double> out, double x, double y, double z) {
  out[0] = x;
  out[1] = y;
  out[2] = z;
  return out;
}

/// Adds two vec3's
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a the first operand
/// @param {ReadonlyVec3} b the second operand
/// @returns {vec3} out
List<double> add(List<double> out, List<double> a, List<double> b) {
  out[0] = a[0] + b[0];
  out[1] = a[1] + b[1];
  out[2] = a[2] + b[2];
  return out;
}

/// Subtracts vector b from vector a
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a the first operand
/// @param {ReadonlyVec3} b the second operand
/// @returns {vec3} out
List<double> subtract(List<double> out, List<double> a, List<double> b) {
  out[0] = a[0] - b[0];
  out[1] = a[1] - b[1];
  out[2] = a[2] - b[2];
  return out;
}

/// Multiplies two vec3's
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a the first operand
/// @param {ReadonlyVec3} b the second operand
/// @returns {vec3} out
List<double> multiply(List<double> out, List<double> a, List<double> b) {
  out[0] = a[0] * b[0];
  out[1] = a[1] * b[1];
  out[2] = a[2] * b[2];
  return out;
}

/// Divides two vec3's
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a the first operand
/// @param {ReadonlyVec3} b the second operand
/// @returns {vec3} out
List<double> divide(List<double> out, List<double> a, List<double> b) {
  out[0] = a[0] / b[0];
  out[1] = a[1] / b[1];
  out[2] = a[2] / b[2];
  return out;
}

/// math.ceil the components of a vec3
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a vector to ceil
/// @returns {vec3} out
List<double> ceil(List<double> out, List<double> a) {
  out[0] = a[0].ceilToDouble();
  out[1] = a[1].ceilToDouble();
  out[2] = a[2].ceilToDouble();
  return out;
}

/// math.floor the components of a vec3
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a vector to floor
/// @returns {vec3} out
List<double> floor(List<double> out, List<double> a) {
  out[0] = a[0].floorToDouble();
  out[1] = a[1].floorToDouble();
  out[2] = a[2].floorToDouble();
  return out;
}

/// Returns the minimum of two vec3's
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a the first operand
/// @param {ReadonlyVec3} b the second operand
/// @returns {vec3} out
List<double> min(List<double> out, List<double> a, List<double> b) {
  out[0] = math.min(a[0], b[0]);
  out[1] = math.min(a[1], b[1]);
  out[2] = math.min(a[2], b[2]);
  return out;
}

/// Returns the maximum of two vec3's
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a the first operand
/// @param {ReadonlyVec3} b the second operand
/// @returns {vec3} out
List<double> max(List<double> out, List<double> a, List<double> b) {
  out[0] = math.max(a[0], b[0]);
  out[1] = math.max(a[1], b[1]);
  out[2] = math.max(a[2], b[2]);
  return out;
}

/// math.round the components of a vec3
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a vector to round
/// @returns {vec3} out
List<double> round(List<double> out, List<double> a) {
  out[0] = a[0].roundToDouble();
  out[1] = a[1].roundToDouble();
  out[2] = a[2].roundToDouble();
  return out;
}

/// Scales a vec3 by a scalar number
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a the vector to scale
/// @param {Number} b amount to scale the vector by
/// @returns {vec3} out
List<double> scale(List<double> out, List<double> a, double b) {
  out[0] = a[0] * b;
  out[1] = a[1] * b;
  out[2] = a[2] * b;
  return out;
}

/// Adds two vec3's after scaling the second operand by a scalar value
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a the first operand
/// @param {ReadonlyVec3} b the second operand
/// @param {Number} scale the amount to scale b by before adding
/// @returns {vec3} out
List<double> scaleAndAdd(List<double> out, List<double> a, List<double> b, double scale) {
  out[0] = a[0] + b[0] * scale;
  out[1] = a[1] + b[1] * scale;
  out[2] = a[2] + b[2] * scale;
  return out;
}

/// Calculates the euclidian distance between two vec3's
///
/// @param {ReadonlyVec3} a the first operand
/// @param {ReadonlyVec3} b the second operand
/// @returns {Number} distance between a and b
double distance(List<double> a, List<double> b) {
  final x = b[0] - a[0];
  final y = b[1] - a[1];
  final z = b[2] - a[2];
  return hypot([x, y, z]);
}

/// Calculates the squared euclidian distance between two vec3's
///
/// @param {ReadonlyVec3} a the first operand
/// @param {ReadonlyVec3} b the second operand
/// @returns {Number} squared distance between a and b
double squaredDistance(List<double> a, List<double> b) {
  final x = b[0] - a[0];
  final y = b[1] - a[1];
  final z = b[2] - a[2];
  return x * x + y * y + z * z;
}

/// Calculates the squared length of a vec3
///
/// @param {ReadonlyVec3} a vector to calculate squared length of
/// @returns {Number} squared length of a
double squaredLength(List<double> a) {
  final x = a[0];
  final y = a[1];
  final z = a[2];
  return x * x + y * y + z * z;
}

/// Negates the components of a vec3
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a vector to negate
/// @returns {vec3} out
List<double> negate(List<double> out, List<double> a) {
  out[0] = -a[0];
  out[1] = -a[1];
  out[2] = -a[2];
  return out;
}

/// Returns the inverse of the components of a vec3
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a vector to invert
/// @returns {vec3} out
List<double> inverse(List<double> out, List<double> a) {
  out[0] = 1.0 / a[0];
  out[1] = 1.0 / a[1];
  out[2] = 1.0 / a[2];
  return out;
}

/// Normalize a vec3
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a vector to normalize
/// @returns {vec3} out
List<double> normalize(List<double> out, List<double> a) {
  final x = a[0];
  final y = a[1];
  final z = a[2];
  double len = x * x + y * y + z * z;
  if (len > 0) {
    //TODO: evaluate use of glm_invsqrt here?
    len = 1 / math.sqrt(len);
  }
  out[0] = a[0] * len;
  out[1] = a[1] * len;
  out[2] = a[2] * len;
  return out;
}

/// Calculates the dot product of two vec3's
///
/// @param {ReadonlyVec3} a the first operand
/// @param {ReadonlyVec3} b the second operand
/// @returns {Number} dot product of a and b
double dot(List<double> a, List<double> b) {
  return a[0] * b[0] + a[1] * b[1] + a[2] * b[2];
}

/// Computes the cross product of two vec3's
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a the first operand
/// @param {ReadonlyVec3} b the second operand
/// @returns {vec3} out
List<double> cross(List<double> out, List<double> a, List<double> b) {
  final ax = a[0], ay = a[1], az = a[2];
  final bx = b[0], by = b[1], bz = b[2];

  out[0] = ay * bz - az * by;
  out[1] = az * bx - ax * bz;
  out[2] = ax * by - ay * bx;
  return out;
}

/// Performs a linear interpolation between two vec3's
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a the first operand
/// @param {ReadonlyVec3} b the second operand
/// @param {Number} t interpolation amount, in the range [0-1], between the two inputs
/// @returns {vec3} out
List<double> lerp(List<double> out, List<double> a, List<double> b, double t) {
  final ax = a[0];
  final ay = a[1];
  final az = a[2];
  out[0] = ax + t * (b[0] - ax);
  out[1] = ay + t * (b[1] - ay);
  out[2] = az + t * (b[2] - az);
  return out;
}

/// Performs a spherical linear interpolation between two vec3's
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a the first operand
/// @param {ReadonlyVec3} b the second operand
/// @param {Number} t interpolation amount, in the range [0-1], between the two inputs
/// @returns {vec3} out
List<double> slerp(List<double> out, List<double> a, List<double> b, double t) {
  final angle = math.acos(math.min(math.max(dot(a, b), -1), 1));
  final sinTotal = math.sin(angle);

  final ratioA = math.sin((1 - t) * angle) / sinTotal;
  final ratioB = math.sin(t * angle) / sinTotal;
  out[0] = ratioA * a[0] + ratioB * b[0];
  out[1] = ratioA * a[1] + ratioB * b[1];
  out[2] = ratioA * a[2] + ratioB * b[2];

  return out;
}

/// Performs a hermite interpolation with two control points
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a the first operand
/// @param {ReadonlyVec3} b the second operand
/// @param {ReadonlyVec3} c the third operand
/// @param {ReadonlyVec3} d the fourth operand
/// @param {Number} t interpolation amount, in the range [0-1], between the two inputs
/// @returns {vec3} out
List<double> hermite(out, a, b, c, d, t) {
  final factorTimes2 = t * t;
  final factor1 = factorTimes2 * (2 * t - 3) + 1;
  final factor2 = factorTimes2 * (t - 2) + t;
  final factor3 = factorTimes2 * (t - 1);
  final factor4 = factorTimes2 * (3 - 2 * t);

  out[0] = a[0] * factor1 + b[0] * factor2 + c[0] * factor3 + d[0] * factor4;
  out[1] = a[1] * factor1 + b[1] * factor2 + c[1] * factor3 + d[1] * factor4;
  out[2] = a[2] * factor1 + b[2] * factor2 + c[2] * factor3 + d[2] * factor4;

  return out;
}

/// Performs a bezier interpolation with two control points
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a the first operand
/// @param {ReadonlyVec3} b the second operand
/// @param {ReadonlyVec3} c the third operand
/// @param {ReadonlyVec3} d the fourth operand
/// @param {Number} t interpolation amount, in the range [0-1], between the two inputs
/// @returns {vec3} out
List<double> bezier(out, a, b, c, d, t) {
  final inverseFactor = 1 - t;
  final inverseFactorTimesTwo = inverseFactor * inverseFactor;
  final factorTimes2 = t * t;
  final factor1 = inverseFactorTimesTwo * inverseFactor;
  final factor2 = 3 * t * inverseFactorTimesTwo;
  final factor3 = 3 * factorTimes2 * inverseFactor;
  final factor4 = factorTimes2 * t;

  out[0] = a[0] * factor1 + b[0] * factor2 + c[0] * factor3 + d[0] * factor4;
  out[1] = a[1] * factor1 + b[1] * factor2 + c[1] * factor3 + d[1] * factor4;
  out[2] = a[2] * factor1 + b[2] * factor2 + c[2] * factor3 + d[2] * factor4;

  return out;
}

/// Generates a random vector with the given scale
///
/// @param {vec3} out the receiving vector
/// @param {Number} [scale] Length of the resulting vector. If omitted, a unit vector will be returned
/// @returns {vec3} out
List<double> random(List<double> out, double? scale) {
  scale ??= 1.0;

  final r = GlMatrix.random() * 2.0 * math.pi;
  final z = GlMatrix.random() * 2.0 - 1.0;
  final zScale = math.sqrt(1.0 - z * z) * scale;

  out[0] = math.cos(r) * zScale;
  out[1] = math.sin(r) * zScale;
  out[2] = z * scale;
  return out;
}

/// Transforms the vec3 with a mat4.
/// 4th vector component is implicitly '1'
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a the vector to transform
/// @param {ReadonlyMat4} m matrix to transform with
/// @returns {vec3} out
List<double> transformMat4(List<double> out, List<double> a, List<double> m) {
  final x = a[0], y = a[1], z = a[2];
  double w = m[3] * x + m[7] * y + m[11] * z + m[15];
  // w ??= 1.0;
  out[0] = (m[0] * x + m[4] * y + m[8] * z + m[12]) / w;
  out[1] = (m[1] * x + m[5] * y + m[9] * z + m[13]) / w;
  out[2] = (m[2] * x + m[6] * y + m[10] * z + m[14]) / w;
  return out;
}

/// Transforms the vec3 with a mat3.
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a the vector to transform
/// @param {ReadonlyMat3} m the 3x3 matrix to transform with
/// @returns {vec3} out
List<double> transformMat3(List<double> out, List<double> a, List<double> m) {
  final x = a[0], y = a[1], z = a[2];
  out[0] = x * m[0] + y * m[3] + z * m[6];
  out[1] = x * m[1] + y * m[4] + z * m[7];
  out[2] = x * m[2] + y * m[5] + z * m[8];
  return out;
}

/// Transforms the vec3 with a quat
/// Can also be used for dual quaternions. (Multiply it with the real part)
///
/// @param {vec3} out the receiving vector
/// @param {ReadonlyVec3} a the vector to transform
/// @param {ReadonlyQuat} q quaternion to transform with
/// @returns {vec3} out
List<double> transformQuat(List<double> out, List<double> a, List<double> q) {
  // benchmarks: https://jsperf.com/quaternion-transform-vec3-implementations-fixed
  final qx = q[0], qy = q[1], qz = q[2], qw = q[3];
  final x = a[0], y = a[1], z = a[2];
  // var qvec = [qx, qy, qz];
  // var uv = vec3.cross([], qvec, a);
  double uvx = qy * z - qz * y, uvy = qz * x - qx * z, uvz = qx * y - qy * x;
  // var uuv = vec3.cross([], qvec, uv);
  double uuvx = qy * uvz - qz * uvy, uuvy = qz * uvx - qx * uvz, uuvz = qx * uvy - qy * uvx;
  // vec3.scale(uv, uv, 2 * w);
  final w2 = qw * 2;
  uvx *= w2;
  uvy *= w2;
  uvz *= w2;
  // vec3.scale(uuv, uuv, 2);
  uuvx *= 2;
  uuvy *= 2;
  uuvz *= 2;
  // return vec3.add(out, a, vec3.add(out, uv, uuv));
  out[0] = x + uvx + uuvx;
  out[1] = y + uvy + uuvy;
  out[2] = z + uvz + uuvz;
  return out;
}

/// Rotate a 3D vector around the x-axis
/// @param {vec3} out The receiving vec3
/// @param {ReadonlyVec3} a The vec3 point to rotate
/// @param {ReadonlyVec3} b The origin of the rotation
/// @param {Number} rad The angle of rotation in radians
/// @returns {vec3} out
List<double> rotateX(List<double> out, List<double> a, List<double> b, double rad) {
  final p = [], r = [];
  //Translate point to the origin
  p[0] = a[0] - b[0];
  p[1] = a[1] - b[1];
  p[2] = a[2] - b[2];

  //perform rotation
  r[0] = p[0];
  r[1] = p[1] * math.cos(rad) - p[2] * math.sin(rad);
  r[2] = p[1] * math.sin(rad) + p[2] * math.cos(rad);

  //translate to correct position
  out[0] = r[0] + b[0];
  out[1] = r[1] + b[1];
  out[2] = r[2] + b[2];

  return out;
}

/// Rotate a 3D vector around the y-axis
/// @param {vec3} out The receiving vec3
/// @param {ReadonlyVec3} a The vec3 point to rotate
/// @param {ReadonlyVec3} b The origin of the rotation
/// @param {Number} rad The angle of rotation in radians
/// @returns {vec3} out
List<double> rotateY(List<double> out, List<double> a, List<double> b, double rad) {
  final p = [], r = [];
  //Translate point to the origin
  p[0] = a[0] - b[0];
  p[1] = a[1] - b[1];
  p[2] = a[2] - b[2];

  //perform rotation
  r[0] = p[2] * math.sin(rad) + p[0] * math.cos(rad);
  r[1] = p[1];
  r[2] = p[2] * math.cos(rad) - p[0] * math.sin(rad);

  //translate to correct position
  out[0] = r[0] + b[0];
  out[1] = r[1] + b[1];
  out[2] = r[2] + b[2];

  return out;
}

/// Rotate a 3D vector around the z-axis
/// @param {vec3} out The receiving vec3
/// @param {ReadonlyVec3} a The vec3 point to rotate
/// @param {ReadonlyVec3} b The origin of the rotation
/// @param {Number} rad The angle of rotation in radians
/// @returns {vec3} out
List<double> rotateZ(List<double> out, List<double> a, List<double> b, double rad) {
  final p = [], r = [];
  //Translate point to the origin
  p[0] = a[0] - b[0];
  p[1] = a[1] - b[1];
  p[2] = a[2] - b[2];

  //perform rotation
  r[0] = p[0] * math.cos(rad) - p[1] * math.sin(rad);
  r[1] = p[0] * math.sin(rad) + p[1] * math.cos(rad);
  r[2] = p[2];

  //translate to correct position
  out[0] = r[0] + b[0];
  out[1] = r[1] + b[1];
  out[2] = r[2] + b[2];

  return out;
}

/// Get the angle between two 3D vectors
/// @param {ReadonlyVec3} a The first operand
/// @param {ReadonlyVec3} b The second operand
/// @returns {Number} The angle in radians
double angle(List<double> a, List<double> b) {
  final ax = a[0],
      ay = a[1],
      az = a[2],
      bx = b[0],
      by = b[1],
      bz = b[2],
      mag = math.sqrt((ax * ax + ay * ay + az * az) * (bx * bx + by * by + bz * bz)),
      cosine = mag == 0 ? 0 : dot(a, b) / mag;
  return math.acos(math.min(math.max(cosine, -1), 1));
}

/// Set the components of a vec3 to zero
///
/// @param {vec3} out the receiving vector
/// @returns {vec3} out
List<double> zero(out) {
  out[0] = 0.0;
  out[1] = 0.0;
  out[2] = 0.0;
  return out;
}

/// Returns a string representation of a vector
///
/// @param {ReadonlyVec3} a vector to represent as a string
/// @returns {String} string representation of the vector
String str(a) {
  return """vec3("${a[0]}", "${a[1]}", "${a[2]}")""";
}

/// Returns whether or not the vectors have exactly the same elements in the same position (when compared with ==)
///
/// @param {ReadonlyVec3} a The first vector.
/// @param {ReadonlyVec3} b The second vector.
/// @returns {Boolean} True if the vectors are equal, false otherwise.
bool exactEquals(a, b) {
  return a[0] == b[0] && a[1] == b[1] && a[2] == b[2];
}

/// Returns whether or not the vectors have approximately the same elements in the same position.
///
/// @param {ReadonlyVec3} a The first vector.
/// @param {ReadonlyVec3} b The second vector.
/// @returns {Boolean} True if the vectors are equal, false otherwise.
bool equals(a, b) {
  final a0 = a[0], a1 = a[1], a2 = a[2];
  final b0 = b[0], b1 = b[1], b2 = b[2];
  return ((a0 - b0).abs() <= GlMatrix.EPSILON * math.max(1.0, math.max(a0.abs(), b0.abs())) &&
      (a1 - b1).abs() <= GlMatrix.EPSILON * math.max(1.0, math.max(a1.abs(), b1.abs())) &&
      (a2 - b2).abs() <= GlMatrix.EPSILON * math.max(1.0, math.max(a2.abs(), b2.abs())));
}

/// Alias for {@link vec3.subtract}
/// @function
const sub = subtract;

/// Alias for {@link vec3.multiply}
/// @function
const mul = multiply;

/// Alias for {@link vec3.divide}
/// @function
const div = divide;

/// Alias for {@link vec3.distance}
/// @function
const dist = distance;

/// Alias for {@link vec3.squaredDistance}
/// @function
const sqrDist = squaredDistance;

/// Alias for {@link vec3.length}
/// @function
const len = length;

/// Alias for {@link vec3.squaredLength}
/// @function
const sqrLen = squaredLength;

/// Perform some operation over an array of vec3s.
///
/// @param {Array} a the array of vectors to iterate over
/// @param {Number} stride Number of elements between the start of each vec3. If 0 assumes tightly packed
/// @param {Number} offset Number of elements to skip at the beginning of the array
/// @param {Number} count Number of vec3s to iterate over. If 0 iterates over entire array
/// @param {Function} fn Function to call for each vector in the array
/// @param {Object} [arg] additional argument to pass to fn
/// @returns {Array} a
/// @function
final forEach = (() {
  final vec = create();

  return (List<double> a, int? stride, int? offset, int? count, fn, arg) {
    int i, l;

    stride ??= 3;
    offset ??= 0;

    if (count != null) {
      l = math.min(count * stride + offset, a.length);
    } else {
      l = a.length;
    }

    for (i = offset; i < l; i += stride) {
      vec[0] = a[i];
      vec[1] = a[i + 1];
      vec[2] = a[i + 2];
      fn(vec, vec, arg);
      a[i] = vec[0];
      a[i + 1] = vec[1];
      a[i + 2] = vec[2];
    }

    return a;
  };
})();