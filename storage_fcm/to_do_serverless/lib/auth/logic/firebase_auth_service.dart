import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<User?> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    final userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    userCredential.user?.updateDisplayName(name);
    return userCredential.user;
  }

  static Future<User?> logIn({
    required String email,
    required String password,
  }) async {
    final userCredential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential.user;
  }

  static Future<void> logOut() {
    return _auth.signOut();
  }

  static User get currentUser {
    return _auth.currentUser!;
  }
}
