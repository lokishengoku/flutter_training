import 'package:flutter/material.dart';
import 'package:flutter_training/basic_widgets/basic_widgets_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Enouvo - Flutter Training Series')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('1. Basic Dart'),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, BasicWidgetsScreen.route),
              child: const Text('2. Basic Widgets'),
            ),
          ],
        ),
      ),
    );
  }
}
