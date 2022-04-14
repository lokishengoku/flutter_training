import 'package:flutter/material.dart';

import 'basic_widgets_exercise_screen.dart';

class ExerciseScreen extends StatelessWidget {
  static const String route = '/exercise_screen.dart';
  const ExerciseScreen({Key? key}) : super(key: key);

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
              onPressed: () => Navigator.pushNamed(
                  context, BasicWidgetsExerciseScreen.route),
              child: const Text('2. Basic Widgets'),
            ),
          ],
        ),
      ),
    );
  }
}
