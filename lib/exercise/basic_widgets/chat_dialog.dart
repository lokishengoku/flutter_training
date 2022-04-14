import 'package:flutter/material.dart';
import 'package:flutter_training/shared/widgets/text_field_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatDialog extends StatelessWidget {
  final String avatarUrl;
  final String name;
  final String tag;
  final String message;
  final Function onTapSend;
  final TextEditingController textEditingController = TextEditingController();
  ChatDialog({
    Key? key,
    required this.avatarUrl,
    required this.name,
    required this.tag,
    required this.message,
    required this.onTapSend,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          _topWidget(),
          _bottomWidget(),
        ],
      ),
    );
  }

  Widget _topWidget() {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 30),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/chat_dialog_background.jpg"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(avatarUrl),
                radius: 32,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      maxLines: 1,
                      style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Text(
                      tag,
                      maxLines: 1,
                      style: GoogleFonts.nunito(
                        textStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            message,
            style: GoogleFonts.nunito(
              textStyle: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _bottomWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: TextFieldWidget(
              enabledBorderColor: Colors.grey[200],
              focusedBorderColor: Colors.grey[300],
              borderRadius: 20,
              controller: textEditingController,
              hintText: 'Type your message...',
            ),
          ),
          const SizedBox(width: 12),
          TextButton(
            onPressed: () => onTapSend(textEditingController.text),
            style: TextButton.styleFrom(
              primary: Colors.grey[600],
            ),
            child: Text(
              'Reply',
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
