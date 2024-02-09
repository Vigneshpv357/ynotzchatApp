import 'package:flutter/material.dart';

class RoomMembersContainer extends StatelessWidget {
  const RoomMembersContainer({super.key});

  @override
  Widget build(BuildContext context) {
    int i = 0;
    return InkWell(
      child: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
          i++;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text("Member $i"),
            ),
          );
        },
      ),
    );
  }
}
