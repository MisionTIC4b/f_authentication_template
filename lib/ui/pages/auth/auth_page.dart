import 'package:f_authentication/ui/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _State();
}

class _State extends State<AuthPage> {
  late AuthController controller;
  late bool isLogin;
  late TextEditingController _emailController, _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    isLogin = true;
    controller = Get.find();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => controller.setAuthHandler(),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Autenticación"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                isLogin ? "Iniciar Sesión" : "Crear cuenta",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(label: Text("Email:")),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 4,
              ),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(label: Text("Password:")),
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                child: ElevatedButton(
                  onPressed: () => isLogin
                      ? /* TODO: si isLogin is true inicia sesion */
                      : /* TODO si no lo es registra al usuario */,
                  child: Text(isLogin ? "Iniciar Sesión" : "Crear cuenta"),
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    isLogin = !isLogin;
                  });
                },
                child: Text(!isLogin ? "Iniciar Sesión" : "Crear cuenta"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
