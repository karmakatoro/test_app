import 'package:flutter/material.dart';
import 'package:test_app/screens/home_page.dart';
import 'package:test_app/screens/event_page.dart';
import 'package:test_app/screens/add_event_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: [
          Text("Accueil"),
          Text("Evenements"),
          Text("Ajouter")
        ][_currentIndex]),
        body: [HomePage(), EventPage(), AddEventPage()][_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setCurrentIndex(index),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          iconSize: 32,
          elevation: 10,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: "Planning"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Ajout"),
          ],
        ),
      ),
    );
  }
}
