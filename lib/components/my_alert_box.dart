import 'package:flutter/material.dart';

class MyAlertBox extends StatelessWidget {
  final dynamic controller;
  final VoidCallback onSave;
  final VoidCallback onCancle;
  const MyAlertBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancle});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[800],
      content: TextField(
        controller: controller,
        style: const TextStyle(color: Colors.white),
        decoration: const InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        ),
      ),
      actions: [
        MaterialButton(
          onPressed: onSave,
          child: Text(
            "Save",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.black,
        ),
        MaterialButton(
          onPressed: onCancle,
          child: Text(
            "Cancle",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.black,
        )
      ],
    );
  }
}
