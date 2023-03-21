import 'package:flutter/material.dart';

import '../utils/gradient_setting.dart';

class GradientBigButton extends StatelessWidget {
  final Widget child;

  const GradientBigButton({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: GradientSetting().gradient,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 4),
            blurRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}
