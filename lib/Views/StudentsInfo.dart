import 'package:flutter/material.dart';

var Datos = [];

class studeninf extends StatefulWidget {
  studeninf({required this.listadatos, Key? key}) : super(key: key);
  var listadatos = [];
  void Asignacion() {
    Datos = listadatos;
  }

  @override
  State<studeninf> createState() => _studeninfState();
}

class _studeninfState extends State<studeninf> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
