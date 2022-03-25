import 'package:flutter/material.dart';

class ColumnWidgetScreen extends StatelessWidget {
  static const String route = '/basic_widgets_column_widget_screen';
  const ColumnWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column Widget')),
      body: Center(
        child: Container(
          color: Colors.indigoAccent.withOpacity(0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(height: 50, width: 120, color: Colors.red),
              Container(height: 50, width: 120, color: Colors.orange),
              Container(height: 50, width: 120, color: Colors.amber),
              Container(height: 50, width: 120, color: Colors.green),
              Container(height: 50, width: 120, color: Colors.blue),
              Container(height: 50, width: 120, color: Colors.indigo),
              Container(height: 50, width: 120, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
