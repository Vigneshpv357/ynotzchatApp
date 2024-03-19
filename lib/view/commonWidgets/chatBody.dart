import 'package:flutter/material.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.sizeOf(context);
    return Container(
      width: mq.width - mq.width / 3.5,
      child: Stack(
        children: [
          GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemBuilder: (context, index) {
              return Container(
                child: Image.asset(
                  "assets/background_Image.jpg",
                ),
              );
            },
          ),
          Container(
            height: double.infinity,
            color: Color.fromARGB(212, 238, 227, 251),
          ),
        ],
      ),
    );
  }
}
