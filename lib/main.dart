import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Aura Test App"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Aura Test App 2023",
            style: TextStyle(fontSize: 42),
          ),
          Text(
            "Salon informatique du 27 mars au 3 avril 2023",
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          )
        ],
      )),
    ));
  }
}
