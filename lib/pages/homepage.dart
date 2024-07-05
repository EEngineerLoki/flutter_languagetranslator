import 'package:flutter/material.dart';
import 'package:flutter_translator/data/data.dart';
import 'package:flutter_translator/util/translation.dart';
import 'package:flutter_translator/widgets/message_widget.dart';
import 'package:flutter_translator/widgets/title_widget.dart';
import 'package:flutter_translator/widgets/translation_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String language1 = Translations.languages.first;
  String language2 = Translations.languages.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: buildTitle(),
      ),
      body: ListView.builder(
        itemCount: Data.chat.length,
        itemBuilder: (BuildContext context, int index) {
          final chat = Data.chat[index];
          final fromLanguage = chat.isMe ? language1 : language2;
          final toLanguage = chat.isMe ? language2 : language1;

          return TranslationWidget(
            message: chat.message, 
            fromLanguage: fromLanguage,
            toLanguage: toLanguage, 
            builder: (translatedMessage) => MessageWidget(
              message: chat.message, 
              translatedMessage: translatedMessage, 
              isMe: chat.isMe));
        },
        ),
    );
  }

  Widget buildTitle() => TitleWidget(
    language1: language1, 
    language2: language2, 
    onChangeLanguage1: (newLanguage) => setState(() {
      language1 = newLanguage!;
    }), 
    onChangeLanguage2: (newLanguage) => setState(() {
      language2 = newLanguage!;  
    })
  );

}