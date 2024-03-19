import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/colorConstants.dart';

class InitialChatPage extends StatelessWidget {
  const InitialChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.sizeOf(context);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/messenger.png"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Your Messages",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Send private photos and messages to a friend or group",
            ),
          ),
         
        ],
      ),
    );
  }
}
