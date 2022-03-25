import 'package:flutter/material.dart';

class RowWidgetScreen extends StatelessWidget {
  static const String route = '/basic_widgets_row_widget_screen';
  const RowWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row Widget')),
      body: Center(
        child: Container(
          color: Colors.indigoAccent.withOpacity(0.1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(height: 50, width: 40, color: Colors.red),
              Container(height: 50, width: 40, color: Colors.orange),
              Container(height: 50, width: 40, color: Colors.amber),
              Container(height: 50, width: 40, color: Colors.green),
              Container(height: 50, width: 40, color: Colors.blue),
              Container(height: 50, width: 40, color: Colors.indigo),
              Container(height: 50, width: 40, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
