import 'package:flutter/material.dart';
import 'package:flutter_translator/util/translation.dart';


class DropdownWidget extends StatelessWidget {
  final String value;
  final Function(String?)? onChangeLanguage;

  const DropdownWidget({
    super.key,
    required this.value,
    required this.onChangeLanguage});

  @override
  Widget build(BuildContext context) {

    final items = Translations.languages.map<DropdownMenuItem<String>>(
      (String value) => DropdownMenuItem<String>(
        value: value,
        child: Text(value))
    ).toList();

    return DropdownButton<String>(
      items: items,
      value: value,
      icon: const Icon(Icons.expand_more, color: Colors.grey,),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      onChanged: onChangeLanguage);
  }
}