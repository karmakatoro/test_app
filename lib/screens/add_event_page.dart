import 'package:flutter/material.dart';

class AddEventPage extends StatefulWidget {
  const AddEventPage({Key? key}) : super(key: key);

  @override
  _AddEventPageState createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Nom de la conference',
                  hintText: 'Entrez le nom de la conferance',
                  border: OutlineInputBorder()),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Envoyer"))
          ],
        ),
      ),
    );
  }
}
