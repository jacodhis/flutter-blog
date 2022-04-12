import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormsName extends StatelessWidget {
  TextEditingController myController;
  Icon iccon;
  String? name;
  TextFormsName(
      {Key? key, required this.myController, required this.iccon, this.name})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        value!.isEmpty ? 'please enter name' : null;
      },
      controller: myController,
      decoration: InputDecoration(
        icon: iccon,
        labelText: name,
      ),
    );
  }
}
