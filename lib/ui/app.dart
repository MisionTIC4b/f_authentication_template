import 'package:f_authentication/ui/pages/auth/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AuthApp extends StatelessWidget {
  const AuthApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ToDo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const ContentPage(),
      home: const AuthPage(),
    );
  }
}
