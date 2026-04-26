import 'package:client/pages/login/login_page.dart';
import 'package:client/repos/auth_repo.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final pswdController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    nameController.dispose();
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
              const Text("Register"),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Enter email-id",
                ),
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: "Enter name",
                ),
              ),
              TextField(
                controller: pswdController,
                decoration: const InputDecoration(
                  hintText: "Enter password",
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  final res = await AuthRepo().register(
                    name: nameController.text,
                    email: emailController.text,
                    password: pswdController.text,
                  );
                  // final val = switch (res) {
                  //   Left(value: final l) => l,
                  //   Right(value: final r) => r.toString(),
                  // };
                  print(res);
                },
                child: Text("Register"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text("Already have account? Login."),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
