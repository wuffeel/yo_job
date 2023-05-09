import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:yo_job/models/user/user_model.dart';

import '../../repository/auth_repository.dart';

class AuthNotifier extends ChangeNotifier {
  UserModel? _currentUser;

  UserModel? get currentUser => _currentUser;
  final AuthRepository _authRepository;

  AuthNotifier(this._authRepository);

  Future<void> googleSignIn() async {
    final firebaseUser = await _authRepository.googleSignIn();

    if (firebaseUser == null) return;

    _currentUser = UserModel(id: firebaseUser.uid, email: firebaseUser.email!);

    notifyListeners();
  }

  void signUp() {}

  Future<void> logOut() async {}
}
