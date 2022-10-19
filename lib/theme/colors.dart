import 'package:flutter/material.dart';

import 'package:pigment/pigment.dart';

/// Define all the colors to be used in application in this file
/// To use - import this file and call required string by:
///```dart
///      AppColors.<name>
///```
///For Color Names refer: http://chir.ag/projects/name-that-color/
class AppColors {
  AppColors._();

  static final Color black = Pigment.fromString('#000000');
  static final Color white = Pigment.fromString('#FFFFFF');
  static final Color lemonGreen = Pigment.fromString('#A0C800');
  static final Color dodgerBlue = Pigment.fromString('#13B9FF');
  static final Color grayChateau = Pigment.fromString('#9CA4AB');
  static final Color radicalRed = Pigment.fromString('#FF375F');
  static final Color tuna = Pigment.fromString('#3C3C41');
  static final Color concrete = Pigment.fromString('#F2F2F2');
  static final Color springGreen = Pigment.fromString('#00E487');
  static final Color amber = Pigment.fromString('#FFC107');
  static final Color blue = Pigment.fromString('#1432FF');
  static final Color athensGray = Pigment.fromString('#EBEBEC');
  static final Color jumbo = Pigment.fromString('#8A8A8D');
}
