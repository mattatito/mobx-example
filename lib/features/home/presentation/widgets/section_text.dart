
import 'package:flutter/material.dart';

class SectionText extends StatelessWidget {

  final String text;

  const SectionText(this.text, {Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 18),
    );
  }
}
