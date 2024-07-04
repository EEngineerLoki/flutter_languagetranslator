import 'package:flutter/material.dart';
import 'package:flutter_translator/util/dialogbox.dart';
import 'package:flutter_translator/util/dropdown.dart';
import 'package:flutter_translator/util/speakbutton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final languages = ['English', 'French', 'German', 'Spanish'];
  String selectedVal = 'English';

  void selectedLanguage(val) {
    setState(() {
      selectedVal = val as String;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(25),
        color: Colors.white,
        child: ListView(
          children: [
            DropdownLanguage(
              languages: languages, 
              value: selectedVal,
              onChange: selectedLanguage,
            ),
            const SizedBox(height: 12,),
            const TextInputTranslate(),
            const SizedBox(height: 20,),
            DropdownLanguage(
              languages: languages, 
              value: selectedVal, 
              onChange: selectedLanguage,
            ),
            const SizedBox(height: 12,),
            const TextOutputTranslate(),
            const SizedBox(height: 30,),
            const SpeakButton()
          ],
        ),
      ),
    );
  }
}