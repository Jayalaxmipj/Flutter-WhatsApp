import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutterwhats_app/whatsapp_home.dart';

class SigninOrSignup extends StatelessWidget {
  const SigninOrSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Spacer(flex: 2),
              Image.network(
                "https://img-17.ccm2.net/45JfQjpBNNDF-2sElz2D0AS9JTE=/923x/fc3ada93cbe14b2db427a52be35dcbc9/ccm-faq/119610378_s.jpg",
                fit: BoxFit.fitWidth,
              ),
              Spacer(),
              //SizedBox(height: 20.0),
              ElevatedButton(
                child: Text("Sign In"),
                style: TextButton.styleFrom(backgroundColor: Colors.pinkAccent),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WhatsAppHome(),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                child: Text("Sign Up"),
                style: TextButton.styleFrom(backgroundColor: Colors.pinkAccent),
                onPressed: () {},
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
