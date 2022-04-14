import 'package:flutter/material.dart';
import 'package:flutter_training/shared/utils/time.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatItem extends StatelessWidget {
  final String avatarUrl;
  final bool isOnline;
  final String name;
  final String finalMessageContent;
  final DateTime? finalMessageTime;
  final String tag;
  const ChatItem({
    Key? key,
    required this.avatarUrl,
    required this.isOnline,
    required this.name,
    required this.finalMessageContent,
    this.finalMessageTime,
    required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 28),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          _avatar(),
          const SizedBox(width: 12),
          _content(),
        ],
      ),
    );
  }

  Widget _avatar() {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(avatarUrl),
          radius: 36,
        ),
        Positioned(
          bottom: 2,
          right: 2,
          child: Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: isOnline ? Colors.deepOrange : Colors.grey,
              shape: BoxShape.circle,
              border: Border.all(
                width: 2,
                color: Colors.white,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _content() {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  name,
                  maxLines: 1,
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              _tag(),
            ],
          ),
          Text(
            finalMessageContent,
            maxLines: 1,
            style: GoogleFonts.nunito(
              textStyle: TextStyle(
                color: Colors.grey[900],
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Text(
            TimeHelper.dateTimeToString(finalMessageTime ?? DateTime.now()),
            maxLines: 1,
            style: GoogleFonts.nunito(
              textStyle: TextStyle(
                color: Colors.grey[400],
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _tag() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      margin: const EdgeInsets.only(left: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.deepOrange,
      ),
      child: Text(
        tag,
        style: GoogleFonts.nunito(
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
