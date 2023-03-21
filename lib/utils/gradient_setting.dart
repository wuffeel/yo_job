import 'package:flutter/material.dart';
import 'package:yo_job/styles/color_palette.dart';

class GradientSetting {
  get gradient => LinearGradient(
        colors: [ColorPalette().ff8800, ColorPalette().ffb700],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      );


  /// Text should be white to work properly
  ShaderMask textOrangeToYellow({required Widget child}) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return gradient.createShader(Offset.zero & bounds.size);
      },
      child: child,
    );
  }
}
