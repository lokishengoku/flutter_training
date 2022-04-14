import 'package:flutter/material.dart';
import 'package:flutter_training/exercise/basic_widgets/chat_dialog.dart';
import 'package:flutter_training/exercise/basic_widgets/index.dart';
import 'package:flutter_training/exercise/basic_widgets/todo_item_widget.dart';

class BasicWidgetsExerciseScreen extends StatelessWidget {
  static const String route = '/basic_widgets_exercise_screen';
  const BasicWidgetsExerciseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Enouvo - Flutter Training Series')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TodoItemWidget(
                isDone: true,
                onChecked: (_) {},
                title: 'Make a coffee',
              ),
              const ChatItem(
                avatarUrl:
                    'https://kenh14cdn.com/203336854389633024/2022/3/1/nguoidoi-1646152343119133480980.jpeg',
                isOnline: true,
                name: 'Bruce Wayne',
                finalMessageContent: 'I\'m Batman',
                tag: 'DC',
              ),
              ChatDialog(
                avatarUrl:
                    'https://kenh14cdn.com/203336854389633024/2022/3/1/nguoidoi-1646152343119133480980.jpeg',
                name: 'Bruce Wayne',
                tag: 'DC - Batman',
                message:
                    '“Maybe that’s what batman is about. Not winning...but failing, and getting back up. Knowing he’ll fail, fail a thousand times, but still won’t give up.”',
                onTapSend: (_) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
