import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/commonWidgets/appBarCommon.dart';
import 'package:flutter_application_1/view/commonWidgets/chatBody.dart';
import 'package:flutter_application_1/view/commonWidgets/messageBar.dart';

class PersonalChatpage extends StatelessWidget {
  final String title;
  const PersonalChatpage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.sizeOf(context);
    return Container(
      color: Colors.green,
      child: Stack(
        children: [
          ChatBody(),
          AppbarCommon(
            ismembers: false,
            isCamera: true,
            iscall: true,
            ismore: true,
            title: "Juile",
            width: mq.width - mq.width / 3,
          ),
          Positioned(left: 0, right: 0, bottom: 0, child: MessageBar())
        ],
      ),
    );
  }
}
