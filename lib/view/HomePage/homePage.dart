import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/HomePage/leftTab.dart';
import 'package:flutter_application_1/view/HomePage/rightTab.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Row(children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width / 3,
            child: LeftTab(),
          ),
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width -
                MediaQuery.sizeOf(context).width / 3,
            child: Righttab(),
          )
        ]),
      ),
    );
  }
}
