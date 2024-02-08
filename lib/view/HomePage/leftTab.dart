import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/ChatPage/chatpage.dart';
import 'package:flutter_application_1/view/commonWidgets/appBarCommon.dart';
import 'package:flutter_application_1/view/commonWidgets/searchbar.dart';
import 'package:flutter_application_1/view/RoomsPage/rooms.dart';
import 'package:flutter_application_1/view/colorConstants.dart';

class LeftTab extends StatelessWidget {
  const LeftTab({super.key});

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.sizeOf(context);
    return Container(
      height: mq.height,
      color: Colorsused.secondaryColor,
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
                children: [Chatpage(), Roompage()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
