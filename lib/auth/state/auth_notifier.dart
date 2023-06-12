import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:yo_job/models/user/user_model.dart';

import '../../repository/auth_repository.dart';
import '../../repository/user_repository.dart';

class UserNotifier extends ChangeNotifier {
  UserModel? _currentUser;

  UserModel? get currentUser => _currentUser;
  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  UserNotifier(this._authRepository, this._userRepository);

  Future<void> updateUser(UserModel userModel) async {
    try {
      await _userRepository
          .updateUser(userModel)
          .then((value) => _currentUser = userModel);
    } catch (e) {
      print(e);
    }
  }

  Future<void> googleSignIn() async {
    try {
      final firebaseUser = await _authRepository.googleSignIn();

      if (firebaseUser == null) return;

      _currentUser =
          UserModel(id: firebaseUser.uid, email: firebaseUser.email!);

      final user = await _userRepository.getUserById(_currentUser!.id);
      if (user == null) {
        _userRepository.addUser(_currentUser!);
      }
      else{
        _currentUser = user;
      }

      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  void signUp() {}

  Future<void> logOut() async {}
}
