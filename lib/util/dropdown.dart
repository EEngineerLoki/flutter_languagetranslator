import 'package:flutter/material.dart';

class DropdownLanguage extends StatelessWidget {
  const DropdownLanguage({
    super.key,
    required this.languages,
    required this.value,
    required this.onChange});

  final List languages;
  final String value;
  final Function(Object)? onChange;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: value,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.flag, color: Colors.red,)
      ),
      items: languages.map(
        (e) => DropdownMenuItem(value: e, child: Text(e))
      ).toList(), 
      onChanged: (context) => onChange,
    );
  }
}