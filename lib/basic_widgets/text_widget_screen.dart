import 'package:flutter/material.dart';

class TextWidgetScreen extends StatelessWidget {
  static const String route = '/basic_widgets_text_widget_screen';
  const TextWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Widget')),
      body: const Center(
        child: Text(
          'Hello world!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            color: Colors.indigo,
            fontWeight: FontWeight.w600,
            decoration: TextDecoration.underline,
            decorationThickness: 2,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.wavy,
            backgroundColor: Colors.amberAccent,
            letterSpacing: 4,
            wordSpacing: 8,
          ),
        ),
      ),
    );
  }
}
