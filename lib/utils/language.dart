class Language {
  final int id;
  final String flag;
  final String name;
  final String languageCode;
  final String? countryCode;

  Language({
    required this.id,
    required this.flag,
    required this.name,
    required this.languageCode,
    this.countryCode = '',
  });

  static List<Language> languageList() {
    return <Language>[
      Language(id: 1, flag: '🇺🇸', name: 'English', languageCode: 'en'),
      Language(
        id: 2,
        flag: '🇺🇦',
        name: 'Ukrainian',
        languageCode: 'uk',
        countryCode: 'UA',
      ),
    ];
  }
}
