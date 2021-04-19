import 'package:chat/constants.dart';
import 'package:chat/screens/messaages/component/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appBar(),
      body: Body(),
    );
  }

  AppBar appBar(){
   return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          BackButton(),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/user_2.png"),
          ),
          SizedBox(
            width: kDefaultPadding * 0.75,
          ),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Md. Masum Talukder", style: TextStyle(fontSize: 15)),
                  Text(
                    "online",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              )),
        ],
      ),
      actions: [
        IconButton(icon: Icon(Icons.call), onPressed: () {}),
        IconButton(icon: Icon(Icons.video_call), onPressed: () {})
      ],
    );
  }
}
