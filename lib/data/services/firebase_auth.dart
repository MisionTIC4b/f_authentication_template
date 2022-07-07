import 'package:f_authentication/domain/services/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService implements AuthInterface {
  static AuthService? _instance;
  late final FirebaseAuth _auth;

  AuthService._internal() : _auth = FirebaseAuth.instance;

  static AuthService get instance {
    _instance ??= AuthService._internal();
    return _instance!;
  }

  @override
  User? get currentUser => _auth.currentUser;

  @override
  login({required String email, required String password}) async {
    await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  signUp({required String email, required String password}) async {
    await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  logout() async {
    await _auth.signOut();
  }
}
