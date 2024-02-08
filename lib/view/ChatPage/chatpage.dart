import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/chatProviderClass.dart';
import 'package:flutter_application_1/view/commonWidgets/searchbar.dart';
import 'package:provider/provider.dart';

class Chatpage extends StatelessWidget {
  const Chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchbarCustom(),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              Provider.of<chatProviderClass>(context, listen: false)
                  .changethescreen();
              Provider.of<chatProviderClass>(context, listen: false)
                  .changetogroupOrpersonal(isgroup: true);
            },
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(
                      "assets/360_F_17307408_RcdYtwlTOMmQAqqqYLZkJBDgb1SKHOXZ.jpg"),
                  subtitle: Text("Whats Up?"),
                  title: Text("Ashna"),
                  trailing: Text("1h"),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
