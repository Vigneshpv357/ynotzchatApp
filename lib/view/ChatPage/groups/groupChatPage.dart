import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/ChatPage/groups/container.dart';
import 'package:flutter_application_1/view/commonWidgets/appBarCommon.dart';
import 'package:flutter_application_1/view/commonWidgets/chatBody.dart';
import 'package:flutter_application_1/view/commonWidgets/messageBar.dart';

class GroupChatpage extends StatelessWidget {
  final String title;
  const GroupChatpage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.sizeOf(context);
    return Container(
      child: Stack(
        children: [
          Container(
            child: Row(
              children: [
                Expanded(
                  child: ChatBody(),
                ),
                Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    width: mq.width * .22,
                    height: mq.height - mq.height * .06 - mq.height * .05,
                    child: RoomMembersContainer())
              ],
            ),
          ),
          AppbarCommon(
            ismembers: true,
            isCamera: false,
            iscall: false,
            ismore: true,
            title: this.title,
            width: mq.width - mq.width / 3,
          ),
          Positioned(left: 0, right: 0, bottom: 0, child: MessageBar())
        ],
      ),
    );
  }
}
