import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yo_job/utils/gradient_setting.dart';

import '../../generated/l10n.dart';

class AuthButton extends StatelessWidget {
  final bool isSignIn;
  final VoidCallback onPressed;

  const AuthButton({Key? key, required this.isSignIn, required this.onPressed})
      : super(key: key);

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
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 45.0,
            vertical: 16.0,
          ),
          child: Text(
            isSignIn ? AppLocalizations.of(context).signIn : AppLocalizations.of(context).signUp,
            style: GoogleFonts.montserrat(
                fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
