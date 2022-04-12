import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormsDescription extends StatelessWidget {
  TextEditingController myController;
  Icon iccon;
  String? name;
  int? lines;

  TextFormsDescription(
      {Key? key,
      required this.myController,
      required this.iccon,
      this.name,
      this.lines})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        value!.isEmpty ? 'please enter description' : null;
        return null;
      },
      maxLines: lines,
      controller: myController,
      decoration: InputDecoration(
        icon: iccon,
        labelText: name,
      ),
    );
  }
}
