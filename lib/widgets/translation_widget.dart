import 'package:flutter/material.dart';
import 'package:flutter_translator/api/translation_api.dart';
import 'package:flutter_translator/util/translation.dart';

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

  late String translation;

  @override
  Widget build(BuildContext context) {

    final toLanguageCode = Translations.getLanguageCode(widget.toLanguage);

    return FutureBuilder(
      
      future: TranslationApi.translate(widget.message, toLanguageCode), 
      
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          
          case ConnectionState.waiting:
            return buildWaiting();
          
          default:
            if (snapshot.hasError) {
              translation = 'Could not translate due to network problems';
            } else {
              translation = snapshot.data;
            }
            return widget.builder(translation);
        }
      });
  }

  Widget buildWaiting() => 
    // ignore: unnecessary_null_comparison
    translation == null ? Container() : widget.builder(translation);
}
