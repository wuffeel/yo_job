import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonTextStyles {
  get bigButtonText => GoogleFonts.montserrat(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      );

  get addButtonText => GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.w900,
        color: Colors.white,
      );

  get dateText => GoogleFonts.montserrat(
        fontSize: 16,
      );

  get dropDownCategoryText => GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      );

  get greyNoteText => GoogleFonts.montserrat(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: Colors.grey,
      );

  get textFieldTitle => GoogleFonts.montserrat(
        fontSize: 16,
      );

  get personInfoGroupTitle => GoogleFonts.montserrat(
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
}
