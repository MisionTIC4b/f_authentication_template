import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthInterface {
  external User? get currentUser;

  external login({required String email, required String password});

  external signUp({required String email, required String password});

  external logout();
}
