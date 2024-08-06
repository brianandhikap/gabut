import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:latihan_firebase_apps/components/button_page.dart';
import 'package:latihan_firebase_apps/components/textfield_page.dart';
import 'package:latihan_firebase_apps/helper/helper_function.dart';
//import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({
    super.key,
    this.onTap,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() async {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      if (context.mounted) Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      displayErorToUser(e.code, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //bagian icon
              const Icon(
                Icons.account_circle,
                size: 100,
              ),
              const SizedBox(
                height: 15.0,
              ),

              //bagian welcome
              const Text(
                'Welcome!',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(
                height: 20.0,
              ),

              //bagian icon

              //text welcome

              //textfield username
              TextfieldPage(
                hintText: 'Email',
                obsecureText: false,
                controller: emailController,
              ),
              const SizedBox(
                height: 10,
              ),
              //textfield pass
              TextfieldPage(
                hintText: 'Passsword',
                obsecureText: true,
                controller: passwordController,
              ),
              const SizedBox(
                height: 10,
              ),
              //textfield lupa pass
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Pass',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              const SizedBox(
                height: 10.0,
              ),
              //tombol Login
              ButtonPage(
                text: 'Login',
                onTap: login,
              ),
              const SizedBox(
                height: 25,
              ),

              //text register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Tidak punya akun? "),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      "Daftar disini",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.lightBlue),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
