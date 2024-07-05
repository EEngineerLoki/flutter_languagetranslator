import 'package:flutter/material.dart';
import 'package:flutter_translator/widgets/dropdown_widget.dart';

class TitleWidget extends StatelessWidget {
  final String language1;
  final String language2;
  final Function(String?)? onChangeLanguage1;
  final Function(String?)? onChangeLanguage2;

  const TitleWidget({
    super.key,
    required this.language1,
    required this.language2,
    required this.onChangeLanguage1,
    required this.onChangeLanguage2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownWidget(
          value: language1, 
          onChangeLanguage: onChangeLanguage1),
        const SizedBox(width: 12,),
        DropdownWidget(
          value: language2, 
          onChangeLanguage: onChangeLanguage2)
      ],
    );
  }
}