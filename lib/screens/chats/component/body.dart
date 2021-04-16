import 'package:chat/components/filled_outline_button.dart';
import 'package:chat/constants.dart';
import 'package:flutter/cupertino.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          color: kPrimaryColor,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(kDefaultPadding,0,kDefaultPadding,kDefaultPadding),
            child: Row(
              children: [
                FillOutlineButton(press: () {}, text: "Recent Message"),
                SizedBox(width: kDefaultPadding,),
                FillOutlineButton(
                  press: () {},
                  text: "Active",
                  isFilled: false,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
