import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../models/user/user_model.dart';

class AuthRepository {
  final _googleSignIn = GoogleSignIn(scopes: ['email']);
  final _firebaseInstance = FirebaseAuth.instance;

  void signIn() {}

  void signUp() {}

  // Future<UserModel?> currentUser() async {
  //   try {
  //     final firebaseUser = _firebaseInstance.currentUser;
  //     if (firebaseUser != null) {
  //       var user = await _userService.findUserWithUid(firebaseUser.uid);
  //       if (user == null) {
  //         print('New user: ${firebaseUser.uid}');
  //         return await _userService.createUser(firebaseUser);
  //       } else {
  //         print('User found: ${user.id}');
  //         return user;
  //       }
  //     }
  //     print('User not found');
  //     return null;
  //   } catch (e, s) {
  //     print('AuthService::checkCurrentUser: $e');
  //     return null;
  //   }
  // }

  Future<User?> googleSignIn() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      final googleAuth = await googleUser?.authentication;
      if (googleAuth == null) {
        return null;
      }

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      print(credential);

      await _firebaseInstance.signInWithCredential(credential);

      print('Login Success');
      return _firebaseInstance.currentUser;
    } catch (e, s) {
      print('Signing error: $e');
      return null;
    }
  }

  Future<void> logOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      await _googleSignIn.signOut();
    } catch (e, s) {
      print("Logout error");
    }
  }
}
