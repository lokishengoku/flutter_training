import 'package:flutter/material.dart';
import 'package:flutter_training/basic_widgets/index.dart';

class BasicWidgetsScreen extends StatelessWidget {
  static const String route = '/basic_widgets_screen';
  const BasicWidgetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Basic Widgets')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, TextWidgetScreen.route),
              child: const Text('Text'),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, ImageWidgetScreen.route),
              child: const Text('Image'),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, ButtonWidgetScreen.route),
              child: const Text('Button'),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, ColumnWidgetScreen.route),
              child: const Text('Column'),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, RowWidgetScreen.route),
              child: const Text('Row'),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, ContainerWidgetScreen.route),
              child: const Text('Container'),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, CombineScreen.route),
              child: const Text('Example'),
            ),
          ],
        ),
      ),
    );
  }
}
