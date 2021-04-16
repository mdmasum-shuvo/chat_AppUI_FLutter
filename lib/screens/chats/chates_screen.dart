import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'component/body.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Body(),
    );
  }
}

AppBar buildAppbar() {
  return AppBar(
    automaticallyImplyLeading: true,
    title: Text("Chats"),
    actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
  );
}
