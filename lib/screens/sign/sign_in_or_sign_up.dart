import 'package:chat/components/primary_button.dart';
import 'package:chat/constants.dart';
import 'package:chat/screens/chats/chates_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInOrSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: SafeArea(
            child: Column(
          children: [
            Spacer(
              flex: 1,
            ),
            Image.asset(
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? "assets/images/Logo_light.png"
                  : "assets/images/Logo_dark.png",
              height: 146,
            ),
            Spacer(),
            PrimaryButton(
                text: "Sign In",
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatScreen()));
                }),
            SizedBox(
              height: kDefaultPadding * 1.5,
            ),
            PrimaryButton(
                text: "Sign Up",
                color: Theme.of(context).colorScheme.secondary,
                press: () {}),
            Spacer(
              flex: 2,
            )
          ],
        )),
      ),
    );
  }
}
