import 'package:flutter/material.dart';
import 'package:studentregistration/Models/BD.dart';

class AddStudentScreen extends StatefulWidget {
  const AddStudentScreen({Key? key}) : super(key: key);

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  final namecontroller = TextEditingController();
  final lastnamecontroller = TextEditingController();
  final agecontroller = TextEditingController();
  final dateofbirthcontroller = TextEditingController();
  final hobbitscontroller = TextEditingController();
  final descriptioncontroller = TextEditingController();

  void onSave() {
    final name = namecontroller.text.trim();
    final lastname = lastnamecontroller.text.trim();
    final age = agecontroller.text.trim();
    final dateofbirth = dateofbirthcontroller.text.trim();
    final hobbits = hobbitscontroller.text.trim();
    final description = descriptioncontroller.text.trim();

    final result = Students(
        name: name,
        lastname: lastname,
        age: int.parse(age),
        dateofbirth: dateofbirth,
        hobbits: hobbits,
        descriptions: description);
    Navigator.of(context).pop(result);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: namecontroller,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold),
            decoration: const InputDecoration(
              hintText: "Nombre",
              border: UnderlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextField(
            controller: lastnamecontroller,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold),
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: "Edad",
              border: UnderlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: onSave, child: const Text("Agregar"))
        ],
      ),
    );
  }
}
