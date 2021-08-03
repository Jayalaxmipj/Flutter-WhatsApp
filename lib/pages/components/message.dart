import 'package:flutter/material.dart';
import 'package:flutterwhats_app/models/chat_message.dart';
import 'package:flutterwhats_app/pages/components/text_message.dart';
import 'package:flutterwhats_app/pages/components/video_message.dart';

import 'audio_message.dart';

class Message extends StatelessWidget {
  const Message({Key? key, required this.message}) : super(key: key);
  final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
        //break;
        case ChatMessageType.audio:
          return AudioMessage(message: message);
        //break;
        case ChatMessageType.video:
          return VideoMessage(message: message);
        // break;
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            CircleAvatar(
              radius: 12,
              backgroundImage: NetworkImage(
                  "https://st.depositphotos.com/2101611/3925/v/600/depositphotos_39258143-stock-illustration-businessman-avatar-profile-picture.jpg "),
            ),
            SizedBox(width: 5)
          ],
          messageContaint(message),
          if (message.isSender) MessageStatusDot(status: message.messageStatus)
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  final MessageStatus status;
  const MessageStatusDot({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.not_sent:
          return Colors.redAccent;
        //break;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.1);
        //break;
        case MessageStatus.viewed:
          return Colors.redAccent;
        //break;
        default:
          return Colors.transparent;
      }
    }

    return Container(
      margin: EdgeInsets.only(left: 10 / 2),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: dotColor(status),
        shape: BoxShape.circle,
      ),
      child: Icon(
        status == MessageStatus.not_sent ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
