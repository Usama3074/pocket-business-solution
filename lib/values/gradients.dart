
import 'package:flutter/rendering.dart';


class Gradients {
  static const Gradient primaryGradient = LinearGradient(
    begin: Alignment(0.43831, 1.19813),
    end: Alignment(0.56469, -0.55923),
    stops: [
      0,
      1,
    ],
    colors: [
      Color.fromARGB(255, 75, 158, 221),
      Color.fromARGB(255, 85, 96, 255),
    ],
  );
  static const Gradient secondaryGradient = LinearGradient(
    begin: Alignment(0.43831, 1.19813),
    end: Alignment(0.56469, -0.55923),
    stops: [
      0,
      1,
    ],
    colors: [
      Color.fromARGB(255, 176, 209, 235),
      Color.fromARGB(255, 232, 232, 232),
    ],
  );
}