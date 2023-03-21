import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:yo_job/utils/gradient_setting.dart';

import '../generated/l10n.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;

  const CustomTextField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: S.of(context).typeHere,
        hintStyle: GoogleFonts.montserrat(
          fontSize: 16,
        ),
        border: GradientOutlineInputBorder(
          gradient: GradientSetting().gradient,
          width: 3.0,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      style: GoogleFonts.montserrat(
        fontSize: 16,
      ),
    );
  }
}
