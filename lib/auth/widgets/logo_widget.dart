import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/gradient_setting.dart';

class YoJobLogo extends StatelessWidget {
  const YoJobLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientSetting().orangeToYellow(
      child: Text(
        'YoJob',
        style: GoogleFonts.montserrat(
          color: Colors.white,
          fontSize: 64,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
