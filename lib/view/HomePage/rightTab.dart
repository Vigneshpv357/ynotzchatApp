import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/chatProviderClass.dart';
import 'package:flutter_application_1/view/ChatPage/groups/groupChatPage.dart';
import 'package:flutter_application_1/view/ChatPage/initialchatpage.dart';
import 'package:flutter_application_1/view/ChatPage/personal/personalChatPage.dart';
import 'package:provider/provider.dart';

class Righttab extends StatelessWidget {
  const Righttab({super.key});

  @override
  Widget build(BuildContext context) {
    print(Provider.of<chatProviderClass>(context).isgroup);
    print(
        "=======================${Provider.of<chatProviderClass>(context).changeScreen}");
    return Container(
        child: Provider.of<chatProviderClass>(context).changeScreen
            ? Provider.of<chatProviderClass>(context).isgroup
                ? GroupChatpage(
                    title:
                        Provider.of<chatProviderClass>(context, listen: false)
                            .item,
                  )
                : PersonalChatpage(
                    title: "Julie",
                  )
            : InitialChatPage());
  }
}
