import 'package:flutter/material.dart';
import 'package:flutterwhats_app/models/chat_message.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({Key? key, required this.message}) : super(key: key);
  final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.symmetric(
        horizontal: 5 * 0.75,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.greenAccent.withOpacity(message.isSender ? 1 : 0.08),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        message.text,
        style: TextStyle(
          color: message.isSender
              ? Colors.white
              : Theme.of(context).textTheme.bodyText1!.color,
        ),
      ),
    );
  }
}
