import 'package:flutter/material.dart';

import '../../common_widgets/language_dropdown.dart';
import '../../styles/color_palette.dart';

class AuthAppBar extends StatelessWidget with PreferredSizeWidget {
  const AuthAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: ColorPalette().ff7b00,
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: LanguageDropdown(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
