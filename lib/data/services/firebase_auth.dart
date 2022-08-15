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
   /* TODO inicia sesion usando el firebase */
  }

  @override
  signUp({required String email, required String password}) async {
   /* TODO crea una cuenta usando el firebase */
  }

  @override
  logout() async {
   /* TODO cierra sesion usando el firebase */
  }
}
