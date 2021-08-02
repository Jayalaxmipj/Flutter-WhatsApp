import 'package:flutter/material.dart';
import 'package:flutterwhats_app/whatsapp_home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "WhatsApp",
      theme: new ThemeData(
        primaryColor: new Color(0xff075e54),
        accentColor: new Color(0xff25d366),
      ),
      home: new WhatsAppHome(),
    );
  }
}
