import 'package:flutter/material.dart';
import 'package:flutterwhats_app/models/chat_message.dart';

import 'chat_input_field.dart';
import 'message.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
          itemCount: demeChatMessages.length,
          itemBuilder: (BuildContext context, int index) =>
              Message(message: demeChatMessages[index]),
        )),
        ChatInputField(),
      ],
    );
  }
}
