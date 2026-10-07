import 'package:flutter/material.dart';
import 'package:simple_flutter/login_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Saya',
      home: LoginPage(),
    );
  }
}