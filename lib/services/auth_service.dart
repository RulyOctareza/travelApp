import 'package:firebase_auth/firebase_auth.dart';
import 'package:travel_app/models/user_model.dart';
import 'package:travel_app/services/user_service.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp({
    required String email,
    required String password,
    required String name,
    String hobby = '',
  }) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      UserModel user = UserModel(
          id: userCredential.user!.uid,
          email: email,
          name: name,
          hobby: hobby,
          balance: 280000000);
      await UserService().setUser(user);
      return user;
    } catch (e) {
      rethrow;
    }
  }
}