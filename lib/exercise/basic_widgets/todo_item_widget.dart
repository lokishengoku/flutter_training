import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoItemWidget extends StatelessWidget {
  final bool isDone;
  final Function onChecked;
  final String title;

  const TodoItemWidget({
    Key? key,
    required this.isDone,
    required this.onChecked,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
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
      child: Row(
        children: [
          Checkbox(
            value: isDone,
            onChanged: (value) => onChecked(value),
            checkColor: Colors.white,
            activeColor: Colors.deepOrange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
