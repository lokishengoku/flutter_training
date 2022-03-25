import 'package:flutter/material.dart';

class ImageWidgetScreen extends StatelessWidget {
  static const String route = '/basic_widgets_image_widget_screen';
  const ImageWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Widget')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.amber,
              width: 240,
              height: 300,
              child: const Image(
                image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.amber,
              width: 240,
              height: 300,
              child: const Image(
                image: AssetImage(
                  'assets/images/owl.jpeg',
                ),
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
