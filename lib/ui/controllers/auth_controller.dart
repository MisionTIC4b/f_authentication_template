import 'package:f_authentication/data/services/firebase_auth.dart';
import 'package:f_authentication/ui/pages/auth/auth_page.dart';
import 'package:f_authentication/ui/pages/content/content_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  late final AuthService _service = AuthService.instance;
  final Rx<User?> _user = Rx(null);

  User? get currentUser => _user.value;

  setAuthHandler() {
    ever<User?>(
      _user,
      /* TODO cuando haya un cambio en _user navega a la pantalla correcta */,
    );
    _user.value = _service.currentUser;
  }

  login({required String email, required String password}) async {
    /* TODO inicia sesion usando el servicio */
  }

  signUp({required String email, required String password}) async {
    /* TODO crea una cuenta usando el servicio */
  }

  logout() async {
    /* TODO cierra sesion usando el servicio */
  }
}
