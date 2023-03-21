import 'package:flutter/material.dart';
import 'package:yo_job/styles/color_palette.dart';
import 'package:yo_job/styles/common_text_styles.dart';

import '../generated/l10n.dart';

class AddButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: ColorPalette().ff8800,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 2,
              color: Colors.grey
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 16.0,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.add,
                color: Colors.white,
              ),
              Text(
                S.of(context).addNew,
                style: CommonTextStyles().addButtonText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
