import 'package:flutter/material.dart';
import 'package:flutter_training/screen/home_screen.dart';

import 'basic_widgets/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {
        BasicWidgetsScreen.route: (context) => const BasicWidgetsScreen(),
        ColumnWidgetScreen.route: (context) => const ColumnWidgetScreen(),
        RowWidgetScreen.route: (context) => const RowWidgetScreen(),
        ContainerWidgetScreen.route: (context) => const ContainerWidgetScreen(),
        TextWidgetScreen.route: (context) => const TextWidgetScreen(),
        ImageWidgetScreen.route: (context) => const ImageWidgetScreen(),
        ButtonWidgetScreen.route: (context) => const ButtonWidgetScreen(),
        CombineScreen.route: (context) => const CombineScreen(),
      },
    );
  }
}
