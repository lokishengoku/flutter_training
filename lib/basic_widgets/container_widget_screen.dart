import 'package:flutter/material.dart';

class ContainerWidgetScreen extends StatelessWidget {
  static const String route = '/basic_widgets_container_widget_screen';
  const ContainerWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Container Widget')),
      body: Center(
        child: Container(
          child: const Text(
            'This is a Container',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(16),
          color: Colors.blue,
          // decoration: BoxDecoration(
          //   color: Colors.blue,
          //   borderRadius: BorderRadius.circular(16),
          //   border: Border.all(
          //     color: Colors.green,
          //     style: BorderStyle.solid,
          //     width: 2,
          //   ),
          //   boxShadow: const [
          //     BoxShadow(
          //       color: Colors.black45,
          //       blurRadius: 5,
          //       spreadRadius: 2,
          //       offset: Offset(3, 5),
          //     )
          //   ],
          //   // shape: BoxShape.circle,
          // ),
          // constraints: const BoxConstraints(
          //   minWidth: 150,
          //   maxWidth: 300,
          //   minHeight: 50,
          //   maxHeight: 100,
          // ),
          // alignment: Alignment.topLeft,
          width: 300,
          height: 150,
          // transform: Matrix4.rotationZ(1),
        ),
      ),
    );
  }
}
