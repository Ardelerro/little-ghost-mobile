import 'dart:async';
import 'package:sensors_plus/sensors_plus.dart';
import '../utils/gesture_utils.dart';

class GestureService {
  StreamSubscription<AccelerometerEvent>? _subscription;

  void startListening(Function(String) onGestureDetected) {
    _subscription = accelerometerEventStream().listen((event) {
      double x = event.x;
      double y = event.y;
      double z = event.z;

      // Example: basic shake detection
      if (GestureUtils.isShake(x, y, z)) {
        onGestureDetected("shake");
      }

      // Extend this with other gestures (e.g., tilt, double-tap)
    });
  }

  void stopListening() {
    _subscription?.cancel();
    _subscription = null;
  }
}
