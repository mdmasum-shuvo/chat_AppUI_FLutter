import 'package:chat/screens/chats/chates_screen.dart';
import 'package:chat/screens/sign/sign_in_or_sign_up.dart';
import 'package:chat/screens/welcome/welcome_screen.dart';
import 'package:chat/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: ChatScreen(),
    );
  }
}
