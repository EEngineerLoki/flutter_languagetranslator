import 'package:flutter/material.dart';

class Dialogbox extends StatelessWidget {
  const Dialogbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Expanded(
            child: TextFormField(
              maxLines: 20,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
                ),
                hintText: 'Enter Text Here',
                hintStyle: TextStyle(color: Colors.black),
                labelText: 'Enter Text Here:',
                alignLabelWithHint: true
              ),
            ),
          )
        ],
      ),
    );
  }
}