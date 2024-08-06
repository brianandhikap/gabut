import 'package:latihan_firebase_apps/pages/login_page.dart';
import 'package:latihan_firebase_apps/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  //inisial halaman login
  bool showLoginPage = true;

  //pilihan halaman login atau register
  void choosePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: choosePages);
    } else {
      return RegisterPage(onTap: choosePages);
    }
  }
}
