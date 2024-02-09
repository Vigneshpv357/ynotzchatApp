import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/ChatPage/chatpage.dart';
import 'package:flutter_application_1/view/commonWidgets/appBarCommon.dart';
import 'package:flutter_application_1/view/RoomsPage/rooms.dart';

class LeftTab extends StatelessWidget {
  const LeftTab({super.key});

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      height: mq.height,
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            AppbarCommon(
                ismembers: false,
                width: mq.width / 3,
                isCamera: false,
                iscall: false,
                ismore: true),
            TabBar(
              tabs: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 15,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Tab(
                        text: ' Chats',
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Tab(text: 'Rooms'),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [Container(child: Chatpage()), Roompage()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
