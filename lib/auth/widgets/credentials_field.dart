import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yo_job/styles/color_palette.dart';

import '../../generated/l10n.dart';

class CredentialsField extends StatefulWidget {
  final bool isPassword;

  const CredentialsField({
    Key? key,
    required this.isPassword,
  }) : super(key: key);

  @override
  State<CredentialsField> createState() => _CredentialsFieldState();
}

class _CredentialsFieldState extends State<CredentialsField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword ? true : false,
      style: GoogleFonts.montserrat(
        color: ColorPalette().ffa200,
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(
          widget.isPassword ? Icons.email_outlined : Icons.key_outlined,
        ),
        prefixIconColor: ColorPalette().ffa200,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorPalette().ffa200),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorPalette().ff8800),
        ),
        hintText: widget.isPassword
            ? S.of(context).password
            : S.of(context).email,
        hintStyle: GoogleFonts.montserrat(
          fontSize: 16,
        ),
      ),
    );
  }
}
