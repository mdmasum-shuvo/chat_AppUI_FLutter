import 'package:chat/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'component/body.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int selectedIndex = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {},
        child: Icon(Icons.person_add, color: Colors.white,),
      ),

      bottomNavigationBar:bottomNavigation(),
    );
  }
  BottomNavigationBar bottomNavigation(){
    return  BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      onTap: (value){
        setState((){
          selectedIndex=value;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
      ],
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


