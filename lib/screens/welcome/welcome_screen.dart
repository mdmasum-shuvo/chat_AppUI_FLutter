import 'package:chat/constants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(flex: 2,),
            Image.asset("assets/images/welcome_image.png"),
            Spacer(flex: 3,),

            Text(
              "Welcome to our freedom\n messaging app",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Spacer(),

            Text(
              "Chatting with any person of your\nown language",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .color
                      .withOpacity(.64)),
            ),
            Spacer(flex: 3),

            FittedBox(
              child: TextButton(
                  onPressed: null,
                  child: Row(
                    children: [
                      Text(
                        "Skip",
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .color
                                .withOpacity(.8)),
                      ),
                      SizedBox(width: kDefaultPadding/4,),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .color
                            .withOpacity(.8),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
