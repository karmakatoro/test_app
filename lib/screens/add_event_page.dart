import 'package:flutter/material.dart';

class AddEventPage extends StatefulWidget {
  const AddEventPage({Key? key}) : super(key: key);

  @override
  _AddEventPageState createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  final _formKey = GlobalKey<FormState>();
  final nameConfController = TextEditingController();
  final speakerNameController = TextEditingController();
  String selectedConfType = "talk";

  @override
  void dispose() {
    super.dispose();
    nameConfController.dispose();
    speakerNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Nom de la conference',
                      hintText: 'Entrez le nom de la conferance',
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Champ requis";
                    }
                    return null;
                  },
                  controller: nameConfController),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Nom du speaker',
                    hintText: 'Entrez le nom ddu speaker',
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Champ requis";
                  }
                  return null;
                },
                controller: speakerNameController,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: DropdownButtonFormField(
                  items: [
                    const DropdownMenuItem(
                      child: Text("Talk Show"),
                      value: "talk",
                    ),
                    const DropdownMenuItem(
                      child: Text("Demo Code"),
                      value: "demo",
                    ),
                    const DropdownMenuItem(
                      child: Text("Talk Partner"),
                      value: "partner",
                    ),
                  ],
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  value: selectedConfType,
                  onChanged: (value) {
                    setState(() {
                      selectedConfType = value!;
                    });
                  }),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: DateTimeFormField(),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final confName = nameConfController.text;
                      final speakerName = speakerNameController.text;
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Envoi en cours")));
                      FocusScope.of(context).requestFocus(FocusNode());
                    }
                  },
                  child: const Text("Envoyer")),
            ),
          ],
        ),
      ),
    );
  }
}
