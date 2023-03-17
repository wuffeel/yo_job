import 'package:flutter/material.dart';
import 'package:yo_job/auth/screens/sign_up_screen.dart';
import 'package:yo_job/auth/widgets/auth_app_bar.dart';
import 'package:yo_job/auth/widgets/auth_button.dart';
import 'package:yo_job/auth/widgets/credentials_field.dart';
import 'package:yo_job/auth/widgets/logo_widget.dart';
import 'package:yo_job/auth/widgets/sign_up_widget.dart';
import 'package:yo_job/auth/widgets/user_type_widget.dart';

import '../../generated/l10n.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  int _selectedUserIndex = 0;

  void changeUserType(int index) {
    setState(() {
      _selectedUserIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AuthAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const YoJobLogo(),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                UserTypeWidget(
                  title: AppLocalizations.of(context).jobSeeker,
                  onPressed: () {
                    changeUserType(0);
                  },
                  index: 0,
                  currentIndex: _selectedUserIndex == 0 ? true : false,
                ),
                UserTypeWidget(
                  title: AppLocalizations.of(context).recruiter,
                  onPressed: () {
                    changeUserType(1);
                  },
                  index: 1,
                  currentIndex: _selectedUserIndex == 1 ? true : false,
                ),
              ],
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
            AuthButton(isSignIn: true, onPressed: () {}),
            const SizedBox(
              height: 50,
            ),
            SignUpWidget(
              onGooglePressed: () {},
              onSignUpPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(
                      selectedUser: _selectedUserIndex,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
