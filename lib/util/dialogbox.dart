import 'package:flutter/material.dart';

class TextInputTranslate extends StatelessWidget {
  const TextInputTranslate({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter Text Here...',
        labelText: 'Enter Text Here:',
        alignLabelWithHint: true
      ),
      maxLines: 8,
    );
  }
}

class TextOutputTranslate extends StatelessWidget {
  const TextOutputTranslate({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Translated Text Here...',
        alignLabelWithHint: true
      ),
      maxLines: 8,
      readOnly: true,
    );
  }
}