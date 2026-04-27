import 'package:client/pages/register/register_page.dart';
import 'package:client/repos/auth_local_repo.dart';
import 'package:client/repos/auth_repo.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize SharedPreferences
  await AuthLocalRepo.instance.init();
  // Get logged in user data (if exists)
  final token = AuthLocalRepo.instance.getToken();
  if (token != null) {
    final userData = AuthRepo().getCurrentUserData(token);
    print(userData);
    // if user exists redirect to home page else redirect to Login page
  }

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const RegisterPage(),
    );
  }
}
