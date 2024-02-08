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
          Icon(
            Icons.message,
            color: Colorsused.primaryColor,
            size: 80,
          ),
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
              "Send Message and photos to your best one's",
            ),
          ),
          Container(
            color: Colorsused.primaryColor,
            height: mq.height * .05,
            width: mq.width * .1,
            child: Center(
                child: Text(
              "Sign Up",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colorsused.secondaryColor),
            )),
          )
        ],
      ),
    );
  }
}
