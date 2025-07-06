class GestureUtils {
  static bool isShake(double x, double y, double z) { //THIS IS TERRIBLE GESTURE DETECTION, PLACEHOLDER ONLY.
    final magnitude = x * x + y * y + z * z;
    return magnitude > 50;
  }
}