import 'package:flutter/material.dart';
import 'package:flutter_translator/util/dialogbox.dart';
import 'package:flutter_translator/util/speakbutton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            const SizedBox(height: 50,),
            Container(
              color: Colors.white,
              height: 250,
              width: 380,
              child: const Dialogbox(),
            ),
            const SizedBox(height: 50,)
            ,
            Container(
              color: Colors.white,
              height: 250,
              width: 380,
              child: const Dialogbox(),
            ),
            const SizedBox(height: 30,),
            const SpeakButton(),
            const SizedBox(height: 15,),
            const Text('Tap to Submit',
            style: TextStyle(color: Colors.blueAccent,),
            textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}