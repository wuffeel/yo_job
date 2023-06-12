import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yo_job/models/user/user_model.dart';

class UserRepository {
  final _firestoreInstance = FirebaseFirestore.instance;

  Future<void> addUser(UserModel userModel) async {
    await _firestoreInstance
        .collection('anatolyUsers')
        .doc(userModel.id)
        .set(userModel.toJson());
  }

  Future<void> updateUser(UserModel userModel) async {
    await _firestoreInstance
        .collection('anatolyUsers')
        .doc(userModel.id)
        .set(userModel.toJson());
  }

  Future<UserModel?> getUserById(String userId) async {
    final doc =
        await _firestoreInstance.collection('anatolyUsers').doc(userId).get();

    if (doc.data() == null) return null;

    return UserModel.fromJson(doc.data()!);
  }
}
