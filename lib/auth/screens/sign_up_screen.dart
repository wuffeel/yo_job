import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yo_job/auth/screens/welcome_screen.dart';
import 'package:yo_job/auth/widgets/auth_app_bar.dart';
import 'package:yo_job/auth/widgets/auth_button.dart';
import 'package:yo_job/auth/widgets/logo_widget.dart';
import 'package:yo_job/generated/l10n.dart';
import 'package:yo_job/styles/color_palette.dart';

import '../widgets/credentials_field.dart';

class SignUpScreen extends StatefulWidget {
  final int selectedUser;

  const SignUpScreen({Key? key, required this.selectedUser}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final String userType =
        widget.selectedUser == 0 ? S.of(context).jobSeeker : S.of(context).recruiter;
    return Scaffold(
      appBar: const AuthAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const YoJobLogo(),
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RichText(
                textAlign: TextAlign.center,
                maxLines: 2,
                text: TextSpan(
                  text: S.of(context).signUpAs,
                  children: <TextSpan>[
                    TextSpan(
                      text: userType.toLowerCase(),
                      style: GoogleFonts.montserrat(
                        color: ColorPalette().ff8800,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ],
                  style: GoogleFonts.montserrat(
                    color: ColorPalette().ff8800,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 40.0,
              ),
              child: Column(
                children: const [
                  CredentialsField(
                    isPassword: false,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CredentialsField(
                    isPassword: true,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            AuthButton(
              isSignIn: false,
              // TODO: provide database logic
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => WelcomeScreen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
