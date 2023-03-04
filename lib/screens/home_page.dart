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
        Padding(padding: EdgeInsets.only(top: 10)),
        ElevatedButton.icon(
          style: ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
              backgroundColor: MaterialStatePropertyAll(Colors.green)),
          onPressed: () {
            Navigator.push(context,
                PageRouteBuilder(pageBuilder: (_, __, ___) => EventPage()));
          },
          label: Text("Planning", style: TextStyle(fontSize: 16)),
          icon: Icon(Icons.calendar_month),
        ),
      ],
    ));
  }
}
