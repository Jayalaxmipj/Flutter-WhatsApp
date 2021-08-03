import 'package:flutter/material.dart';
import 'package:flutterwhats_app/models/chat_models.dart';
import 'package:flutterwhats_app/pages/message_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: new ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) => new Column(
          children: <Widget>[
            new Divider(
              height: 10.0,
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessageScreen(),
                ),
              ),
              child: new ListTile(
                leading: Stack(
                  children: [
                    new CircleAvatar(
                      foregroundColor: Theme.of(context).primaryColor,
                      backgroundColor: Colors.grey,
                      backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
                    ),
                    if (dummyData[i].isActive)
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  width: 3)),
                        ),
                      )
                  ],
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      dummyData[i].name,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                    new Text(
                      dummyData[i].time,
                      style: new TextStyle(color: Colors.grey, fontSize: 14.0),
                    )
                  ],
                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: new Text(
                    dummyData[i].message,
                    style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
