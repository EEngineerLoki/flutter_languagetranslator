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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              height: 300,
              width: 400,
              child: const Dialogbox(),
            ),
            const SizedBox(height: 20,)
            ,
            Container(
              color: Colors.white,
              height: 300,
              width: 400,
              child: const Dialogbox(),
            ),
            const SizedBox(height: 20,),
            const SpeakButton()
          ],
        ),
      ),
    );
  }
}