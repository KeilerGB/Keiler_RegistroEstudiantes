// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class Students extends StatefulWidget {
  const Students({Key? key}) : super(key: key);

  @override
  State<Students> createState() => _StudentsState();
}

class _StudentsState extends State<Students> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 33, 41),
        title: const Text("Estudiantes"),
        actions: [
          IconButton(
              onPressed: () {
                logOut();
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: bodyHome(),
    );
  }

  Widget bodyHome() {
    String dato = "hola";
    if (dato == "hola") {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 10, 33, 41),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "No hay ningún estudiante",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "registrado.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            addStudent();
          },
          backgroundColor: const Color.fromARGB(255, 19, 49, 60),
          tooltip: 'Añadir Nuevo Estudiante',
          child: const Icon(Icons.add),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 10, 33, 41),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Text("Numero $index");
                        // return ListTile(
                        //   title: Text("Placa: ${datos[index]}"),
                        //   leading: const Icon(Icons.drive_eta),
                        //   onTap: () {},
                        // );
                      }))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            addStudent();
          },
          backgroundColor: const Color.fromARGB(255, 19, 49, 60),
          tooltip: 'Añadir Nuevo Estudiante',
          child: const Icon(Icons.add),
        ),
      );
    }
  }

  void logOut() {
    Navigator.popAndPushNamed(context, "Loggin");
  }

  void addStudent() {}
}
