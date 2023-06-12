import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yo_job/auth/screens/sign_in_screen.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:yo_job/utils/locale_provider.dart';

import 'common_widgets/injector.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LocaleProvider(),
      builder: (context, child) {
        final provider = Provider.of<LocaleProvider>(context);
        provider
            .getInitialLocale()
            .then((locale) => provider.setLocale(locale.languageCode));
        return Injector(
          child: MaterialApp(
            title: 'YoJob',
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: provider.locale,
            supportedLocales: S.delegate.supportedLocales,
            theme: ThemeData(primarySwatch: Colors.orange),
            home: const SignInScreen(),
          ),
        );
      },
    );
  }
}
