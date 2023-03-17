import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:yo_job/utils/locale_provider.dart';

import '../utils/language.dart';

class LanguageDropdown extends StatelessWidget {
  const LanguageDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocaleProvider localeProvider = Provider.of<LocaleProvider>(context);
    return PopupMenuButton<Language>(
      icon: const Icon(Icons.language),
      itemBuilder: (BuildContext context) {
        return Language.languageList()
            .map(
              (languageItem) => PopupMenuItem<Language>(
                value: languageItem,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${languageItem.flag} ${languageItem.name}',
                    style: GoogleFonts.montserrat(fontSize: 16),
                  ),
                ),
              ),
            )
            .toList();
      },
      onSelected: (language) {
        localeProvider.setLocale(language.languageCode);
      },
    );
  }
}
