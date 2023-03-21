import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:yo_job/common_widgets/add_button.dart';
import 'package:yo_job/common_widgets/custom_text_field.dart';
import 'package:yo_job/common_widgets/custom_date_picker.dart';
import 'package:yo_job/common_widgets/gradient_big_button.dart';
import 'package:yo_job/styles/color_palette.dart';
import 'package:yo_job/styles/common_text_styles.dart';

import '../../generated/l10n.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController patronymicController = TextEditingController();

  DateTime selectedDate = DateTime(DateTime.now().year - 14);

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(DateTime.now().year - 65),
      lastDate: DateTime(DateTime.now().year - 14),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                S.of(context).welcome,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: ColorPalette().ff7b00),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                S.of(context).tellUs,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: ColorPalette().ff7b00,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                '(${S.of(context).canBeEdited})',
                style: CommonTextStyles().greyNoteText,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 30.0,
                horizontal: 16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    S.of(context).firstName,
                    style: CommonTextStyles().textFieldTitle,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CustomTextField(controller: firstNameController),
                  ),
                  Text(
                    S.of(context).lastName,
                    style: CommonTextStyles().textFieldTitle,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CustomTextField(controller: lastNameController),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        S.of(context).patronymic,
                        style: CommonTextStyles().textFieldTitle,
                      ),
                      Text(
                        S.of(context).optional,
                        style: CommonTextStyles().greyNoteText,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CustomTextField(controller: patronymicController),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        S.of(context).birthDate,
                        style: CommonTextStyles().textFieldTitle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: CustomDatePicker(
                          onPressed: () => _selectDate(context),
                          date: DateFormat.yMMMd().format(selectedDate),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    S.of(context).industryPreferences,
                    style: CommonTextStyles().personInfoGroupTitle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // TODO: implement ListView.builder for category buttons
                  AddButton(
                    onPressed: () => setState(() {
                      // TODO: implement logic
                    }),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Center(
                    child: GradientBigButton(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40.0,
                          vertical: 12.0,
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            S.of(context).save,
                            style: CommonTextStyles().bigButtonText,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
