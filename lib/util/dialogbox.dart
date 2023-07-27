import 'package:flutter/material.dart';
import 'package:todo_app/util/mybotton.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.blueGrey.shade700,
        content: Container(
          height: 120,
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  focusColor: Colors.transparent,
                  hintText: 'Add task',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(text: 'Save', onPressed: onSave),
                  MyButton(text: 'Cancel', onPressed: onCancel),
                ],
              )
            ],
          ),
        ));
  }
}
