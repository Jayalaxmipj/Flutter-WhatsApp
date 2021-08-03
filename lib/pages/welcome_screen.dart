import 'package:flutter/material.dart';
import 'package:flutterwhats_app/pages/signin_signup.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            Spacer(flex: 3),
            Image.network(
                "https://image.shutterstock.com/image-vector/social-media-background-people-connecting-260nw-391183318.jpg"),
            Spacer(flex: 3),
            Text(
              "Welcome to messaging App",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              "Connect with people from different countries",
              style: TextStyle(
                color: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .color!
                    .withOpacity(0.64),
              ),
            ),
            Spacer(flex: 3),
            FittedBox(
              child: TextButton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SigninOrSignup(),
                        ),
                      ),
                  child: Row(
                    children: [
                      Text(
                        "Skip",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color:
                                Theme.of(context).textTheme.bodyText1!.color),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color!
                            .withOpacity(0.8),
                      )
                    ],
                  )),
            ),
            Spacer(flex: 3),
          ],
        ),
      ),
    ));
  }
}
