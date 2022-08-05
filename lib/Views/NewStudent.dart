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

    // final result = Students(
    //     name: name,
    //     lastname: lastname,
    //     age: int.parse(age),
    //     dateofbirth: dateofbirth,
    //     hobbits: hobbits,
    //     descriptions: description);

    final result = Students(
        name: name,
        age: int.parse(age),
        dateofbirth: "",
        hobbits: "",
        descriptions: "");
    Navigator.of(context).pop(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 33, 41),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          child: ListView(
            children: [
              CreateFormularios(namecontroller, TextInputType.text, "Nombre"),
              CreateFormularios(
                  lastnamecontroller, TextInputType.text, "Apellidos"),
              CreateFormularios(agecontroller, TextInputType.number, "Edad"),
              CreateFormularios(dateofbirthcontroller, TextInputType.text,
                  "Fecha Nacimiento"),
              CreateFormularios(
                  hobbitscontroller, TextInputType.text, "Pasatiempos"),
              CreateFormularios(
                  descriptioncontroller, TextInputType.text, "Descripción"),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 19, 49, 60),
                  ),
                  onPressed: onSave,
                  child: const Text("Agregar"))
            ],
          ),
        ),
      ),
      // content: SizedBox(
      //   height: MediaQuery.of(context).size.height / 1.5,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       CreateFormularios(namecontroller, TextInputType.text, "Nombre"),
      //       const SizedBox(height: 10),
      //       CreateFormularios(
      //           lastnamecontroller, TextInputType.text, "Apellidos"),
      //       const SizedBox(height: 10),
      //       CreateFormularios(agecontroller, TextInputType.number, "Edad"),
      //       const SizedBox(height: 10),
      //       CreateFormularios(
      //           dateofbirthcontroller, TextInputType.text, "Fecha Nacimiento"),
      //       const SizedBox(height: 10),
      //       CreateFormularios(
      //           hobbitscontroller, TextInputType.text, "Pasatiempos"),
      //       const SizedBox(height: 10),
      //       CreateFormularios(
      //           descriptioncontroller, TextInputType.text, "Descripción"),
      //       const SizedBox(height: 10),
      //       ElevatedButton(
      //           style: ElevatedButton.styleFrom(
      //             primary: const Color.fromARGB(255, 19, 49, 60),
      //           ),
      //           onPressed: onSave,
      //           child: const Text("Agregar"))
      //     ],
      //   ),
      // ),
    );
  }

  Widget CreateFormularios(
      TextEditingController controller, TextInputType tipo, String texto) {
    // return TextFormField(
    //   style: const TextStyle(color: Colors.white),
    //   textAlign: TextAlign.center,
    //   controller: controller,
    //   keyboardType: tipo,
    //   decoration: InputDecoration(
    //       labelStyle: const TextStyle(color: Colors.white),
    //       labelText: texto,
    //       enabledBorder: OutlineInputBorder(
    //         borderSide: const BorderSide(
    //             width: 3, color: Color.fromARGB(255, 19, 49, 60)),
    //         borderRadius: BorderRadius.circular(20),
    //       ),
    //       focusedBorder: OutlineInputBorder(
    //         borderSide: const BorderSide(width: 3, color: Colors.white),
    //         borderRadius: BorderRadius.circular(20),
    //       )),
    // );
    return TextField(
      controller: controller,
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      keyboardType: tipo,
      decoration: InputDecoration(
        labelStyle: const TextStyle(color: Colors.white),
        labelText: texto,
        // hintStyle: TextStyle(fontSize: 14, color: Colors.white),
        // hintText: texto,
        border: UnderlineInputBorder(),
      ),
    );
  }
}
