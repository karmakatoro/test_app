import 'package:flutter/material.dart';
import 'package:test_app/screens/event_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
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
          "Salon virtuel de l'informatique du 27 mars au 3 avril 2023",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        const Padding(padding: EdgeInsets.only(top: 10)),
      ],
    ));
  }
}
