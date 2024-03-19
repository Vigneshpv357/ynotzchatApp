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
                leading: Container(
                  height: MediaQuery.sizeOf(context).height * .09,
                  width: MediaQuery.sizeOf(context).width * .05,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/360_F_17307408_RcdYtwlTOMmQAqqqYLZkJBDgb1SKHOXZ.jpg",
                        fit: BoxFit.fill,
                      )),
                ),
                title: Text("Member $i"),
                trailing: InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => Chat_Page(name: "Member $index"),
                      //     ));
                    },
                    child: Icon(Icons.send)),
              ),
          );
        },
      ),
    );
  }
}
