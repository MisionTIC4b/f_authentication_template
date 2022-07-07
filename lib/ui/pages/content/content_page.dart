import 'package:f_authentication/ui/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _State();
}

class _State extends State<ContentPage> {
  late AuthController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.find();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Autenticado"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                controller.currentUser!.email!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                'Firebase UID:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(controller.currentUser!.uid),
              const SizedBox(
                height: 16.0,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.logout();
                },
                child: const Text("Cerrar sesión"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
