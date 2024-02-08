import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/colorConstants.dart';

class AppbarCommon extends StatelessWidget {
  final double width;
  final String? title;
  final bool isCamera;
  final bool iscall;
  final bool ismore;
  final bool ismembers;
  const AppbarCommon(
      {Key? key,
      required this.width,
      this.title,
      required this.ismembers,
      required this.isCamera,
      required this.iscall,
      required this.ismore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.sizeOf(context);

    return Container(
      height: mq.height * .06,
      width: this.width,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                  "assets/360_F_17307408_RcdYtwlTOMmQAqqqYLZkJBDgb1SKHOXZ.jpg"),
            ),
          ),
          title != null
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.amber,
                        size: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(title!),
                      ),
                    ],
                  ),
                )
              : SizedBox(),
          Spacer(),
          isCamera
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.video_call),
                )
              : SizedBox(),
          iscall
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.call),
                )
              : SizedBox(),
          ismembers
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.groups),
                )
              : SizedBox(),
          ismore
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.more_vert),
                )
              : SizedBox()
        ],
      ),
      color: Colorsused.primaryColor,
    );
  }
}
