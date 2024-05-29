import 'package:flutter/material.dart';
import 'package:todo_app/utils/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 150,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // get user input,
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Add a new task"),
              ),

              // button => save => cancel
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // save button,
                  MyButton(text: "Save", onPressed: onSave),

                  const SizedBox(width: 8),

                  //cancel button,
                  MyButton(text: "Cancel", onPressed: onCancel),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
