import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yo_job/styles/color_palette.dart';

import '../../generated/l10n.dart';

class SignUpWidget extends StatelessWidget {
  final VoidCallback onGooglePressed;
  final VoidCallback onSignUpPressed;

  const SignUpWidget({
    Key? key,
    required this.onGooglePressed,
    required this.onSignUpPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: onGooglePressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            elevation: 6,
            minimumSize: const Size(60, 60),
            maximumSize: const Size(60, 60),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/icons/google.svg',
              height: 30,
              width: 30,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 25.0,
          ),
          child: Divider(
            color: Colors.black,
            thickness: 2,
            indent: 0.4 * MediaQuery.of(context).size.width,
            endIndent: 0.4 * MediaQuery.of(context).size.width,
          ),
        ),
        TextButton(
          onPressed: onSignUpPressed,
          child: Text(
            S.of(context).signUp,
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: ColorPalette().ff8800,
            ),
          ),
        )
      ],
    );
  }
}
