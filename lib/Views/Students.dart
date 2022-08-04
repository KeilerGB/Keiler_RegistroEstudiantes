// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class Students extends StatelessWidget {
  Students({Key? key}) : super(key: key);

  String dato = "holga";

  @override
  Widget build(BuildContext context) {
    if (dato == "hola") {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Caso1"),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Caso2"),
        ),
      );
    }
  }
}
