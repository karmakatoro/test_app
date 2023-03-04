import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  final events = [
    {
      "speaker": "Trez Kit",
      "date": "17h00-18h00",
      "subject": "La programmation web et mobile",
      "avatar": "c2"
    },
    {
      "speaker": "Dorcas Promesse",
      "date": "17h30-18h00",
      "subject": "Au coeur de la programmation C#",
      "avatar": "c3"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          final avatar = event['avatar'];
          final speaker = event['speaker'];
          final subject = event['subject'];
          final date = event['date'];
          return Card(
            child: ListTile(
              leading: Image.asset("assets/images/$avatar.jpg"),
              title: Text("$speaker - $date"),
              subtitle: Text("$subject"),
              trailing: const Icon(Icons.info),
            ),
          );
        },
      ),
    );
  }
}
