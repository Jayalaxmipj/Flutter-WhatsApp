import 'package:flutter/material.dart';
import 'package:flutterwhats_app/pages/components/body.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://st.depositphotos.com/2101611/3925/v/600/depositphotos_39258143-stock-illustration-businessman-avatar-profile-picture.jpg"),
          ),
          SizedBox(
            width: 0.75,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kevin",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Active 3m ago",
                style: TextStyle(fontSize: 16),
              )
            ],
          )
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.local_phone),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.videocam),
          onPressed: () {},
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
