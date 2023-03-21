import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:yo_job/styles/color_palette.dart';
import 'package:yo_job/styles/common_text_styles.dart';
import 'package:yo_job/utils/gradient_setting.dart';

class CustomDatePicker extends StatelessWidget {
  final VoidCallback onPressed;
  final String date;

  const CustomDatePicker({
    Key? key,
    required this.onPressed,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        border: GradientBoxBorder(
          gradient: GradientSetting().gradient,
          width: 3.0,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                date,
                style: CommonTextStyles().dateText,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.keyboard_arrow_right_outlined,
                color: ColorPalette().ff8800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
