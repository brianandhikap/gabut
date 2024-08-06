import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:latihan_firebase_apps/components/textfield_page.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({
    super.key,
    this.onTap,
    });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController = TextEditingController();

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
          
              //text welcome

              //textfield username
              TextfieldPage(
                hintText: 'Username', 
                obsecureText: false, 
                controller: usernameController,
                ),
                const SizedBox(
                  height: 10,
                ),
              
              //textfield email
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
              //textfield confirm pass
                TextfieldPage(
                hintText: 'Confirm Passsword', 
                obsecureText: true, 
                controller: confirmpasswordController,
                ),

                const SizedBox(
                  height: 10,
                ),

              //text register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Sudah punya akun? "),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      "Login disini",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue
                        ),
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

