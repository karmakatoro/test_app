import 'package:flutter/material.dart';
import 'package:test_app/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Aura test_app")),
        body: const HomePage(),
      ),
    );
  }
}
