import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yo_job/styles/color_palette.dart';

class UserTypeWidget extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;
  final int index;
  final bool currentIndex;

  const UserTypeWidget({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.index,
    required this.currentIndex,
  }) : super(key: key);

  @override
  State<UserTypeWidget> createState() => _UserTypeWidgetState();
}

class _UserTypeWidgetState extends State<UserTypeWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      child: Text(
        widget.title,
        style: GoogleFonts.montserrat(
          color: ColorPalette().ff8800,
          fontSize: widget.currentIndex ? 20 : 18,
          fontWeight: widget.currentIndex ? FontWeight.w700 : FontWeight.w500,
          decoration: widget.currentIndex
              ? TextDecoration.underline
              : TextDecoration.none,
        ),
      ),
    );
  }
}
