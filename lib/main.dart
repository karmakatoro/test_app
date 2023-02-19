import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Planning du salon"),
      ),
      body: Center(
        child: Text("Prochainement disponible"),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aura Test App"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/logo-dark.png",
            width: 60,
            height: 60,
          ),
          const Text("Aura Test App 2023",
              style: TextStyle(fontSize: 24, fontFamily: "Inter"),
              textAlign: TextAlign.center),
          const Text(
            "Salon informatique du 27 mars au 3 avril 2023",
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          )
        ],
      )),
    );
  }
}
