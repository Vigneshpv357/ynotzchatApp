import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/chatProviderClass.dart';
import 'package:flutter_application_1/view/commonWidgets/searchbar.dart';
import 'package:provider/provider.dart';

class Chatpage extends StatelessWidget {
  const Chatpage({super.key});

  @override
  Widget build(BuildContext context) {
       List<String> items = [
    'Julie 1',
    'Julie 2',
    'Julie 3',
    'Julie 4',
    'Julie 5',
  ];
       List<String> time = [
    '1 hr',
    '2 hr',
    '3 min',
    '46 sec',
    '5 min',
  ];
  

   List<String> propics = [
    "https://i.pinimg.com/564x/27/79/95/277995b2d5aec464c4f54b8cc17f7641.jpg",
    "https://goodstatus.in/wp-content/uploads/2023/01/girls-dp-hd.webp",
    "https://images.news9live.com/wp-content/uploads/2023/12/Girls-WhatsApp-DP_-500-HD-WhatsApp-DP-for-Girls-2023.jpg",
    "https://e1.pxfuel.com/desktop-wallpaper/504/499/desktop-wallpaper-girl-whatsapp-dp-alone-girls-whatsapp-dp.jpg",
    "https://i.pinimg.com/474x/0c/a1/74/0ca17464fa307ba6226c82e29da77ad0.jpg"
   ];
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
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(propics[index])),
                    subtitle: Text("any plans for today?"),
                    title: Text(items[index]),
                    trailing: Text(time[index]),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
