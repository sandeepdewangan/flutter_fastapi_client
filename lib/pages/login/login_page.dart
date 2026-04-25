import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final pswdController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    pswdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              const Text("Login"),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Enter email-id",
                ),
              ),
              TextField(
                controller: pswdController,
                decoration: const InputDecoration(
                  hintText: "Enter password",
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Login")),
              TextButton(
                onPressed: () {},
                child: Text("Don't have account? Register."),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
