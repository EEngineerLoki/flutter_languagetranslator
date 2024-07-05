import 'package:flutter/material.dart';

class TranslationWidget extends StatefulWidget {
  final String message;
  final String fromLanguage;
  final String toLanguage;
  final Widget Function(String translation) builder;

  const TranslationWidget({
    super.key,
    required this.message,
    required this.fromLanguage,
    required this.toLanguage,
    required this.builder});

  @override
  State<TranslationWidget> createState() => _TranslationWidgetState();
}

class _TranslationWidgetState extends State<TranslationWidget> {

  String translation;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}