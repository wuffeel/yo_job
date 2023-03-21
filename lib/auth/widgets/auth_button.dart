import 'package:flutter/material.dart';
import 'package:yo_job/common_widgets/gradient_big_button.dart';
import 'package:yo_job/styles/common_text_styles.dart';

import '../../generated/l10n.dart';

class AuthButton extends StatelessWidget {
  final bool isSignIn;
  final VoidCallback onPressed;

  const AuthButton({Key? key, required this.isSignIn, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientBigButton(
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 45.0,
            vertical: 16.0,
          ),
          child: Text(
            isSignIn ? S.of(context).signIn : S.of(context).signUp,
            style: CommonTextStyles().bigButtonText,
          ),
        ),
      ),
    );
  }
}
