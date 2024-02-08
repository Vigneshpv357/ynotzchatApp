import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/chatProviderClass.dart';
import 'package:flutter_application_1/view/commonWidgets/searchbar.dart';
import 'package:flutter_application_1/view/colorConstants.dart';
import 'package:provider/provider.dart';

class Roompage extends StatefulWidget {
  const Roompage({super.key});

  @override
  State<Roompage> createState() => _RoompageState();
}

class _RoompageState extends State<Roompage> {
  @override
  List<bool> isexpanded = [];
  void initState() {
    super.initState();
    var dropdownItems =
        Provider.of<chatProviderClass>(context, listen: false).dropdownItems;
    isexpanded = List.generate(
      dropdownItems.length,
      (index) => false,
    );
  }

  Widget build(BuildContext context) {
    var dropdownItems = Provider.of<chatProviderClass>(context).dropdownItems;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchbarCustom(),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Categories",
              ),
            ),
          ],
        ),
        Flexible(
          child: Row(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width / 3,
                color: Colorsused.secondaryColor,
                child: ListView.builder(
                  itemCount: dropdownItems.keys.length,
                  itemBuilder: (context, index) {
                    String heading = dropdownItems.keys.elementAt(index);
                    Map<String, List<String>> subItems =
                        dropdownItems[heading] ?? {};

                    return ExpansionTile(
                      title: Text(
                        heading,
                      ),
                      textColor: isexpanded[index]
                          ? Colorsused.primaryColor
                          : Colors.black,
                      collapsedIconColor: isexpanded[index]
                          ? Colors.black
                          : Colorsused.primaryColor,
                      onExpansionChanged: (value) {
                        setState(() {
                          isexpanded[index] = value;
                        });
                      },
                      initiallyExpanded: false,
                      children: subItems.keys.map((subItem) {
                        return ExpansionTile(
                          collapsedTextColor: Colors.black,
                          title: Text(
                            subItem,
                          ),
                          children: subItems[subItem]!.map((room) {
                            return ListTile(
                              title: Text(
                                room,
                              ),
                              trailing: InkWell(
                                onTap: () {
                                  Provider.of<chatProviderClass>(context,
                                          listen: false)
                                      .changethescreen();
                                  Provider.of<chatProviderClass>(context,
                                          listen: false)
                                      .changetogroupOrpersonal(isgroup: false);
                                  Provider.of<chatProviderClass>(context,
                                          listen: false)
                                      .item = room;
                                },
                                child: Icon(
                                  Icons.send,
                                  color: Colorsused.primaryColor,
                                ),
                              ),
                            );
                          }).toList(),
                        );
                      }).toList(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
